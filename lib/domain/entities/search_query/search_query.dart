import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_query.freezed.dart';

@freezed
sealed class SearchQuery with _$SearchQuery {
  const factory SearchQuery({
    required String id,
    required String userId,
    required String query,
    required DateTime searchedAt,
  }) = _SearchQuery;
}