import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_query_update_request.freezed.dart';
part 'search_query_update_request.g.dart';

@freezed
sealed class SearchQueryUpdateRequest with _$SearchQueryUpdateRequest {
  const factory SearchQueryUpdateRequest({
    @JsonKey(name: 'Id') required String id,
    @JsonKey(name: 'Query') required String query,
  }) = _SearchQueryUpdateRequest;

  factory SearchQueryUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryUpdateRequestFromJson(json);
}
