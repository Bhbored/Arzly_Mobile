import 'package:arzly/core/constants/api_errors.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/client/dio_client.dart';
import 'package:arzly/core/network/dio_instances/listing_dio_instance.dart';
import 'package:arzly/core/network/executor/api_executor.dart';
import 'package:arzly/core/network/request/api_request.dart';
import 'package:arzly/core/utils/http_method.dart';
import 'package:arzly/data/dtos/request/listing/listing_add_request.dart';
import 'package:arzly/data/dtos/request/listing/listing_update_request.dart';
import 'package:arzly/data/dtos/response/listing/listing_response.dart';
import 'package:logger/web.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'listing_repo.g.dart';

@riverpod
class ListingRepo extends _$ListingRepo {
  //mokcing firebaseid for now
  DioClient get _client => ref.watch(litingCLientProvider);
  ApiExecutor get _executor => ref.watch(executorProvider(_client.dio));

  final _logger = Logger();
  @override
  FutureOr<List<ListingResponse>> build() async {
    List<ListingResponse> listings = [];
    return listings;
  }

  Future<List<ListingResponse>> fetchAll() async {
    final response = await _executor.execute(
      ApiRequest(
        path: '/indexed',
        method: HttpMethod.get,
        headers: {'pageSize': 3, 'currentPage': 0},
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
    final response = await _executor.execute(
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
    final response = await _executor.execute(
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
    final response = await _executor.execute(
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
    final response = await _executor.execute(
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
    final response = await _executor.execute(
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
