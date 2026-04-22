// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchQueryResponse _$SearchQueryResponseFromJson(Map<String, dynamic> json) =>
    _SearchQueryResponse(
      id: json['Id'] as String,
      userId: json['UserId'] as String,
      query: json['Query'] as String,
      searchedAt: DateTime.parse(json['SearchedAt'] as String),
    );

Map<String, dynamic> _$SearchQueryResponseToJson(
  _SearchQueryResponse instance,
) => <String, dynamic>{
  'Id': instance.id,
  'UserId': instance.userId,
  'Query': instance.query,
  'SearchedAt': instance.searchedAt.toIso8601String(),
};
