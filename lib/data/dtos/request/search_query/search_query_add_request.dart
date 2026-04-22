import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_query_add_request.freezed.dart';
part 'search_query_add_request.g.dart';

@freezed
sealed class SearchQueryAddRequest with _$SearchQueryAddRequest {
  const factory SearchQueryAddRequest({
    @JsonKey(name: 'UserId') required String userId,
    @JsonKey(name: 'Query') required String query,
  }) = _SearchQueryAddRequest;

  factory SearchQueryAddRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchQueryAddRequestFromJson(json);
}
