import 'package:arzly/core/constants/api_errors.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/core/network/client/dio_client.dart';
import 'package:arzly/core/network/dio_instances/listing_dio_instance.dart';
import 'package:arzly/core/network/executor/api_executor.dart';
import 'package:arzly/core/network/request/api_request.dart';
import 'package:arzly/core/utils/http_method.dart';
import 'package:arzly/data/dtos/response/listing/listing_response.dart';
import 'package:logger/web.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'listing_repo.g.dart';

@riverpod
class ListingRepo extends _$ListingRepo {
  DioClient get client => ref.watch(litingCLientProvider);
  ApiExecutor get _executor => ref.watch(executorProvider(client.dio));

  final _logger = Logger();
  @override
  FutureOr<List<ListingResponse>> build() async {
    List<ListingResponse> listings = [];
    return listings;
  }

  Future<List<ListingResponse>> fetchAll() async {
    final response = await _executor.execute(
      ApiRequest(path: '', method: HttpMethod.get),
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
        path: '/filter',
        method: HttpMethod.get,
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

  Future<List<ListingResponse>> getByUserId(String userId) async {
    final response = await _executor.execute(
      ApiRequest(
        path: '/user-listings',
        method: HttpMethod.get,
        headers: {'userId': userId},
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
}
