// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchQueryAddRequest _$SearchQueryAddRequestFromJson(
  Map<String, dynamic> json,
) => _SearchQueryAddRequest(
  userId: json['UserId'] as String,
  query: json['Query'] as String,
);

Map<String, dynamic> _$SearchQueryAddRequestToJson(
  _SearchQueryAddRequest instance,
) => <String, dynamic>{'UserId': instance.userId, 'Query': instance.query};
