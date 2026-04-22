import 'package:arzly/data/dtos/request/search_query/search_query_add_request.dart';
import 'package:arzly/data/dtos/request/search_query/search_query_update_request.dart';
import 'package:arzly/data/dtos/response/search_query/search_query_response.dart';
import 'package:arzly/domain/entities/search_query/search_query.dart';

extension SearchQueryResponseMapper on SearchQueryResponse {
  SearchQuery toEntity() => SearchQuery(
        id: id,
        userId: userId,
        query: query,
        searchedAt: searchedAt,
      );
}

extension SearchQueryToAddRequestMapper on SearchQuery {
  SearchQueryAddRequest toAddRequest() => SearchQueryAddRequest(
        userId: userId,
        query: query,
      );
}

extension SearchQueryToUpdateRequestMapper on SearchQuery {
  SearchQueryUpdateRequest toUpdateRequest() => SearchQueryUpdateRequest(
        id: id,
        query: query,
      );
}
