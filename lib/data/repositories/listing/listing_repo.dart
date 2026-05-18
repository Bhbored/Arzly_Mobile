import 'dart:convert';
import 'package:arzly/core/constants/api_errors.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/dio_instances/listing/listing_dio_instance.dart';
import 'package:arzly/core/network/executor/api_executor.dart';
import 'package:arzly/core/network/request/api_request.dart';
import 'package:arzly/core/storage/secure_storage/secure_storage_android.dart';
import 'package:arzly/core/utils/http_method.dart';
import 'package:arzly/data/dtos/request/listing/listing_add_request.dart';
import 'package:arzly/data/dtos/request/listing/listing_update_request.dart';
import 'package:arzly/data/dtos/response/listing/listing_response.dart';
import 'package:arzly/data/repositories/category/category_repo.dart';
import 'package:arzly/data/repositories/subcategory/subcatgeory_repo.dart';
import 'package:arzly/domain/entities/listing/baby_and_child_details/baby_child_details.dart';
import 'package:arzly/domain/entities/listing/electronics_details/electronics_details.dart';
import 'package:arzly/domain/entities/listing/fashion_details/fashion_details.dart';
import 'package:arzly/domain/entities/listing/furniture_details/furniture_details.dart';
import 'package:arzly/domain/entities/listing/hobbies_details/hobbies_details.dart';
import 'package:arzly/domain/entities/listing/pets_details/pets_details.dart';
import 'package:arzly/domain/entities/listing/phones_details/phones_details.dart';
import 'package:arzly/domain/entities/listing/real_estate_details/real_estate_details.dart';
import 'package:arzly/domain/entities/listing/services_details/services_details.dart';
import 'package:arzly/domain/entities/listing/sports_details/sports_details.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';
import 'package:logger/web.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'listing_repo.g.dart';

@Riverpod(keepAlive: true)
ListingRepo listingRepo(Ref ref) {
  final client = ref.read(listingClientProvider);
  final executor = ref.read(executorProvider(client.dio));
  final categoryRepo = ref.read(categoryRepoProvider);
  final subCategoryRepo = ref.read(subCategoryRepoProvider);
  final secureStorageAndroid = ref.read(secureStorageAndroidProvider);
  return ListingRepo(
    executor: executor,
    categoryRepo: categoryRepo,
    subCategoryRepo: subCategoryRepo,
    secureStorageAndroid: secureStorageAndroid,
  );
}

class ListingRepo {
  final ApiExecutor executor;
  final CategoryRepo categoryRepo;
  final SubCategoryRepo subCategoryRepo;
  final _logger = Logger();
  final SecureStorageAndroid secureStorageAndroid;
  ListingRepo({
    required this.executor,
    required this.categoryRepo,
    required this.subCategoryRepo,
    required this.secureStorageAndroid,
  });

  //helpers

  Future<String?> getUserId() async {
    final userId = await secureStorageAndroid.getValue('firebaseId');
    if (userId == null) {
      throw ApiException(
        userMessage: ApiErrors.unauthorized,
        error: 'User ID not found',
        originalError: null,
      );
    }
    return userId;
  }

  dynamic _parseListingDetails(String categoryName, dynamic listingDetails) {
    if (listingDetails == null || listingDetails is! Map<String, dynamic>) {
      return listingDetails;
    }

    return switch (categoryName) {
      'Real Estate' => RealEstateDetails.fromJson(listingDetails),
      'Vehicles' => VehiclesDetails.fromJson(listingDetails),
      'Phones & Gadgets' => PhonesDetails.fromJson(listingDetails),
      'Electronics & Appliances' => ElectronicsDetails.fromJson(listingDetails),
      'Kids & Babies' => BabyChildDetails.fromJson(listingDetails),
      'Sports & Equipment' => SportsDetails.fromJson(listingDetails),
      'Fashion & Style' => FashionDetails.fromJson(listingDetails),
      'Furniture & Decor' => FurnitureDetails.fromJson(listingDetails),
      'Hobbies' => HobbiesDetails.fromJson(listingDetails),
      'Pets' => PetsDetails.fromJson(listingDetails),
      'Services' => ServicesDetails.fromJson(listingDetails),
      _ => null,
    };
  }

  Future<List<ListingResponse>> assignDetailsToListings(
    List<ListingResponse> listings,
  ) async {
    final categories = await categoryRepo.fetchAll();

    Map<String, String> categoryNames = {};
    Map<String, List<ListingResponse>> listingsByCategory = {};

    for (var category in categories) {
      categoryNames[category.id] = category.name;
      listingsByCategory[category.id] = [];
    }

    final typedListings = <ListingResponse>[];

    for (var listing in listings) {
      final categoryName = categoryNames[listing.categoryId] ?? '';

      final typedListing = listing.copyWith(
        listingDetails: _parseListingDetails(
          categoryName,
          listing.listingDetails,
        ),
      );

      listingsByCategory[listing.categoryId]?.add(typedListing);
      typedListings.add(typedListing);
    }

    return typedListings;
  }

  Future<ListingResponse> assignLDetailsToListing(
    ListingResponse listing,
  ) async {
    final categories = await categoryRepo.fetchAll();
    final category = categories.firstWhere((c) => c.id == listing.categoryId);

    return listing.copyWith(
      listingDetails: _parseListingDetails(
        category.name,
        listing.listingDetails,
      ),
    );
  }

  static const initialHomeSubcategoryNames = [
    'Cars For Sale',
    'Houses For Sale',
    'Mobile Phones',
    'Houses For Rent',
    "Motorcycles & ATV's",
    'Laptops Tablets Computers',
  ];

  Future<List<({String subcategoryName, List<ListingResponse> listings})>>
  assignInitialListingsSubcatgeory() async {
    final subCategories = await subCategoryRepo.fetchAll();
    final subCategoriesIds = subCategories
        .map((subCategory) => subCategory.id)
        .toList();
    final listings = await fetchInitialListings(subCategoriesIds);

    final subCategoryByName = {
      for (final subCategory in subCategories) subCategory.name: subCategory,
    };

    final sections =
        <({String subcategoryName, List<ListingResponse> listings})>[];
    for (final name in initialHomeSubcategoryNames) {
      final subCategory = subCategoryByName[name];
      if (subCategory == null) continue;
      final sectionListings = listings
          .where((listing) => listing.subcategoryId == subCategory.id)
          .toList();
      sections.add((subcategoryName: name, listings: sectionListings));
    }
    return sections;
  }

  Future<List<ListingResponse>> fetchAll() async {
    final response = await executor.execute(
      ApiRequest(
        path: '/indexed',
        method: HttpMethod.get,
        headers: {'pageSize': 10, 'currentPage': 0},
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final rawList = data as List<dynamic>;
          final listings = rawList
              .map((json) => ListingResponse.fromJson(json))
              .toList();
          _logger.i('Fetched ${listings.length} listings successfully');
          return assignDetailsToListings(listings);
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse listing data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to fetch listings: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<List<ListingResponse>> fetchInitialListings(
    List<String> subcategoriesIds,
  ) async {
    final jsonCategories = jsonEncode(subcategoriesIds);
    final response = await executor.execute(
      ApiRequest(
        path: '/initial-listings',
        method: HttpMethod.get,
        data: jsonCategories,
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final rawList = data as List<dynamic>;
          final listings = rawList
              .map((json) => ListingResponse.fromJson(json))
              .toList();
          _logger.i('Fetched ${listings.length} listings successfully');
          return assignDetailsToListings(listings);
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse listing data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to fetch listings: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<List<ListingResponse>> getFilteredListings({
    required String searchBy,
    required String searchString,
  }) async {
    final response = await executor.execute(
      ApiRequest(
        path: '/search',
        method: HttpMethod.get,
        headers: {'pageSize': 10, 'currentPage': 0},
        queryParams: {'searchBy': searchBy, 'searchString': searchString},
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final rawList = data as List<dynamic>;
          final listings = rawList
              .map((json) => ListingResponse.fromJson(json))
              .toList();
          _logger.i('Fetched ${listings.length} filtered listings');
          return assignDetailsToListings(listings);
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse listing data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to fetch filtered listings: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<ListingResponse> getById(String id) async {
    final response = await executor.execute(
      ApiRequest(path: '/$id', method: HttpMethod.get),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final listing = ListingResponse.fromJson(data);
          _logger.i('Fetched listing: $id');
          return assignLDetailsToListing(listing);
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse listing data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to fetch listing $id: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<List<ListingResponse>> getByUserId() async {
    final userId = await getUserId();
    final response = await executor.execute(
      ApiRequest(
        path: '/user-listings',
        method: HttpMethod.get,

        headers: {
          'firebaseId': userId,
          'pageSize': 10,
          'currentPage': 0,
        }, //currently mock firebaseid
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final rawList = data as List<dynamic>;
          final listings = rawList
              .map((json) => ListingResponse.fromJson(json))
              .toList();
          _logger.i('Fetched ${listings.length} listings for user: $userId');
          return assignDetailsToListings(listings);
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse listing data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to fetch user listings: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<void> addListing(ListingAddRequest addRequest) async {
    final userId = await getUserId();
    final response = await executor.execute(
      ApiRequest(
        path: '/create',
        method: HttpMethod.post,
        data: addRequest.toJson(),
        headers: {'firebaseId': userId},
      ),
    );

    response.when(
      success: (data, statusCode, meta) {
        _logger.i('Listing created with response: $data');
      },
      failure: (error, statusCode) {
        _logger.e('Failed to create listing: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<ListingResponse> updateListing(
    ListingUpdateRequest updateRequest,
  ) async {
    final userId = await getUserId();
    final response = await executor.execute(
      ApiRequest(
        path: '/Update',
        method: HttpMethod.put,
        data: updateRequest.toJson(),
        headers: {'firebaseId': userId},
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final raw = data as dynamic;
          final updatedListing = ListingResponse.fromJson(raw);
          _logger.i('Updated ${updatedListing.title} Successfully');
          return assignLDetailsToListing(updatedListing);
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse listing data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e('Failed to create listing: ${error.userMessage}');
        throw error;
      },
    );
  }

  Future<List<ListingResponse>> fetchByCategory(
    String categoryId,
    String? searchString,
    LocationPreset? preset,
    String? order,
    String? orderByPrice,
    double? minPrice,
    double? maxPrice,
  ) async {
    final response = await executor.execute(
      ApiRequest(
        path: '/category-listing/$categoryId',
        method: HttpMethod.get,
        data: jsonEncode(preset?.name),
        headers: {
          'pageSize': 10,
          'currentPage': 0,
          'searchString': searchString,
          'order': order,
          'orderByPrice': orderByPrice,
          'minPrice': minPrice,
          'maxPrice': maxPrice,
        },
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final rawList = data as List<dynamic>;
          final listings = rawList
              .map((json) => ListingResponse.fromJson(json))
              .toList();
          _logger.i(
            'Fetched ${listings.length} listings for category: $categoryId',
          );
          return assignDetailsToListings(listings);
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse listing data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e(
          'Failed to fetch listings for category: $categoryId: ${error.userMessage}',
        );
        throw error;
      },
    );
  }

  Future<List<ListingResponse>> fetchBySubcategory(
    String categoryId,
    String subcategoryId,
    String? searchString,
    LocationPreset? preset,
    dynamic details,
    String? order,
    String? orderByPrice,
    double? minPrice,
    double? maxPrice,
  ) async {
    final response = await executor.execute(
      ApiRequest(
        path: '/subcategory-listing/$subcategoryId',
        method: HttpMethod.get,
        data: jsonEncode(details),
        headers: {
          'pageSize': 10,
          'currentPage': 0,
          'catgeoroyId': categoryId,
          'preset': preset?.name ?? '',
          'searchString': searchString,
          'order': order,
          'orderByPrice': orderByPrice,
          'minPrice': minPrice,
          'maxPrice': maxPrice,
        },
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final rawList = data as List<dynamic>;
          final listings = rawList
              .map((json) => ListingResponse.fromJson(json))
              .toList();
          _logger.i(
            'Fetched ${listings.length} listings for subcategory: $subcategoryId',
          );
          return assignDetailsToListings(listings);
        } catch (e) {
          _logger.e('Parse error: $e');
          throw ApiException(
            userMessage: ApiErrors.badResponse,
            error: 'Failed to parse listing data',
            originalError: e,
          );
        }
      },
      failure: (error, statusCode) {
        _logger.e(
          'Failed to fetch listings for subcategory: $subcategoryId: ${error.userMessage}',
        );
        throw error;
      },
    );
  }
}
