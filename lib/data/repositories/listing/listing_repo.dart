import 'dart:convert';
import 'package:arzly/core/constants/api_errors.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/dio_instances/listing/listing_dio_instance.dart';
import 'package:arzly/core/network/executor/api_executor.dart';
import 'package:arzly/core/network/request/api_request.dart';
import 'package:arzly/core/utils/http_method.dart';
import 'package:arzly/data/dtos/request/listing/listing_add_request.dart';
import 'package:arzly/data/dtos/request/listing/listing_update_request.dart';
import 'package:arzly/data/dtos/response/listing/listing_response.dart';
import 'package:arzly/data/repositories/category/category_repo.dart';
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
  return ListingRepo(executor: executor, categoryRepo: categoryRepo);
}

class ListingRepo {
  final ApiExecutor executor;
  final CategoryRepo categoryRepo;
  final _logger = Logger();
  ListingRepo({required this.executor, required this.categoryRepo});
  //helpers

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
        listingDetails: switch (categoryName) {
          'Real Estate' => RealEstateDetails.fromJson(listing.listingDetails),
          'Vehicles' => VehiclesDetails.fromJson(listing.listingDetails),
          'Phones & Gadgets' => PhonesDetails.fromJson(listing.listingDetails),
          'Electronics & Appliances' => ElectronicsDetails.fromJson(
            listing.listingDetails,
          ),
          'Kids & Babies' => BabyChildDetails.fromJson(listing.listingDetails),
          'Sports & Equipment' => SportsDetails.fromJson(
            listing.listingDetails,
          ),
          'Fashion & Style' => FashionDetails.fromJson(listing.listingDetails),
          'Furniture & Decor' => FurnitureDetails.fromJson(
            listing.listingDetails,
          ),
          'Hobbies' => HobbiesDetails.fromJson(listing.listingDetails),
          'Pets' => PetsDetails.fromJson(listing.listingDetails),
          'Services' => ServicesDetails.fromJson(listing.listingDetails),
          _ => null,
        },
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
      listingDetails: switch (category.name) {
        'Real Estate' => RealEstateDetails.fromJson(listing.listingDetails),
        'Vehicles' => VehiclesDetails.fromJson(listing.listingDetails),
        'Phones & Gadgets' => PhonesDetails.fromJson(listing.listingDetails),
        'Electronics & Appliances' => ElectronicsDetails.fromJson(
          listing.listingDetails,
        ),
        'Kids & Babies' => BabyChildDetails.fromJson(listing.listingDetails),
        'Sports & Equipment' => SportsDetails.fromJson(listing.listingDetails),
        'Fashion & Style' => FashionDetails.fromJson(listing.listingDetails),
        'Furniture & Decor' => FurnitureDetails.fromJson(
          listing.listingDetails,
        ),
        'Hobbies' => HobbiesDetails.fromJson(listing.listingDetails),
        'Pets' => PetsDetails.fromJson(listing.listingDetails),
        'Services' => ServicesDetails.fromJson(listing.listingDetails),
        _ => null,
      },
    );
  }

  Future<Map<String, List<ListingResponse>>>
  assignInitialListingsToCategories() async {
    Map<String, List<ListingResponse>> listingCategoriesMap = {
      'Real Estate': [],
      'Vehicles': [],
      'Phones & Gadgets': [],
      'Electronics & Appliances': [],
      'Kids & Babies': [],
      'Sports & Equipment': [],
      'Fashion & Style': [],
      'Furniture & Decor': [],
      'Hobbies': [],
      'Pets': [],
      'Services': [],
    };
    final categories = await categoryRepo.fetchAll();
    final categoriesIds = categories.map((category) => category.id).toList();
    var listings = await fetchInitialListings(categoriesIds);
    listings = await assignDetailsToListings(listings);
    for (var category in categories) {
      listingCategoriesMap[category.name] = listings
          .where((listing) => listing.categoryId == category.id)
          .toList();
    }
    return listingCategoriesMap;
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
          return listings;
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
    List<String> categoriesIds,
  ) async {
    final jsonCategories = jsonEncode(categoriesIds);
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
          return listings;
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
          return listings;
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
          return listing;
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
    final userId = 'firebase-uid-123';
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
          return listings;
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
    final userId = 'firebase-uid-123';
    final response = await executor.execute(
      ApiRequest(
        path: '/create',
        method: HttpMethod.post,
        data: addRequest.toJson(),
        headers: {'firebaseId': userId}, //currently mock firebaseid
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
    final userId = 'firebase-uid-123';
    final response = await executor.execute(
      ApiRequest(
        path: '/Update',
        method: HttpMethod.put,
        data: updateRequest.toJson(),
        headers: {'firebaseId': userId}, //currently mock firebaseid
      ),
    );

    return response.when(
      success: (data, statusCode, meta) {
        try {
          final raw = data as dynamic;
          final updatedListing = ListingResponse.fromJson(raw);
          _logger.i('Updated ${updatedListing.title} Successfully');
          return updatedListing;
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
}
