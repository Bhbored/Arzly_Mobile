import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_query_response.freezed.dart';
part 'search_query_response.g.dart';

@freezed
sealed class SearchQueryResponse with _$SearchQueryResponse {
  const factory SearchQueryResponse({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'UserId') required String userId,
    @JsonKey(name: 'Query') required String query,
    @JsonKey(name: 'SearchedAt') required DateTime searchedAt,
  }) = _SearchQueryResponse;

  factory SearchQueryResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryResponseFromJson(json);
}
