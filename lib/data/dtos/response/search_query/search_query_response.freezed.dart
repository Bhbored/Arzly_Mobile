// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_query_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchQueryResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'UserId') String get userId;@JsonKey(name: 'Query') String get query;@JsonKey(name: 'SearchedAt') DateTime get searchedAt;
/// Create a copy of SearchQueryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchQueryResponseCopyWith<SearchQueryResponse> get copyWith => _$SearchQueryResponseCopyWithImpl<SearchQueryResponse>(this as SearchQueryResponse, _$identity);

  /// Serializes this SearchQueryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQueryResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.query, query) || other.query == query)&&(identical(other.searchedAt, searchedAt) || other.searchedAt == searchedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,query,searchedAt);

@override
String toString() {
  return 'SearchQueryResponse(id: $id, userId: $userId, query: $query, searchedAt: $searchedAt)';
}


}

/// @nodoc
abstract mixin class $SearchQueryResponseCopyWith<$Res>  {
  factory $SearchQueryResponseCopyWith(SearchQueryResponse value, $Res Function(SearchQueryResponse) _then) = _$SearchQueryResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'Query') String query,@JsonKey(name: 'SearchedAt') DateTime searchedAt
});




}
/// @nodoc
class _$SearchQueryResponseCopyWithImpl<$Res>
    implements $SearchQueryResponseCopyWith<$Res> {
  _$SearchQueryResponseCopyWithImpl(this._self, this._then);

  final SearchQueryResponse _self;
  final $Res Function(SearchQueryResponse) _then;

/// Create a copy of SearchQueryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? query = null,Object? searchedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,searchedAt: null == searchedAt ? _self.searchedAt : searchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchQueryResponse].
extension SearchQueryResponsePatterns on SearchQueryResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchQueryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchQueryResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchQueryResponse value)  $default,){
final _that = this;
switch (_that) {
case _SearchQueryResponse():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchQueryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SearchQueryResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Query')  String query, @JsonKey(name: 'SearchedAt')  DateTime searchedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchQueryResponse() when $default != null:
return $default(_that.id,_that.userId,_that.query,_that.searchedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Query')  String query, @JsonKey(name: 'SearchedAt')  DateTime searchedAt)  $default,) {final _that = this;
switch (_that) {
case _SearchQueryResponse():
return $default(_that.id,_that.userId,_that.query,_that.searchedAt);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Query')  String query, @JsonKey(name: 'SearchedAt')  DateTime searchedAt)?  $default,) {final _that = this;
switch (_that) {
case _SearchQueryResponse() when $default != null:
return $default(_that.id,_that.userId,_that.query,_that.searchedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchQueryResponse implements SearchQueryResponse {
  const _SearchQueryResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'UserId') required this.userId, @JsonKey(name: 'Query') required this.query, @JsonKey(name: 'SearchedAt') required this.searchedAt});
  factory _SearchQueryResponse.fromJson(Map<String, dynamic> json) => _$SearchQueryResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'UserId') final  String userId;
@override@JsonKey(name: 'Query') final  String query;
@override@JsonKey(name: 'SearchedAt') final  DateTime searchedAt;

/// Create a copy of SearchQueryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchQueryResponseCopyWith<_SearchQueryResponse> get copyWith => __$SearchQueryResponseCopyWithImpl<_SearchQueryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchQueryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchQueryResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.query, query) || other.query == query)&&(identical(other.searchedAt, searchedAt) || other.searchedAt == searchedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,query,searchedAt);

@override
String toString() {
  return 'SearchQueryResponse(id: $id, userId: $userId, query: $query, searchedAt: $searchedAt)';
}


}

/// @nodoc
abstract mixin class _$SearchQueryResponseCopyWith<$Res> implements $SearchQueryResponseCopyWith<$Res> {
  factory _$SearchQueryResponseCopyWith(_SearchQueryResponse value, $Res Function(_SearchQueryResponse) _then) = __$SearchQueryResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'Query') String query,@JsonKey(name: 'SearchedAt') DateTime searchedAt
});




}
/// @nodoc
class __$SearchQueryResponseCopyWithImpl<$Res>
    implements _$SearchQueryResponseCopyWith<$Res> {
  __$SearchQueryResponseCopyWithImpl(this._self, this._then);

  final _SearchQueryResponse _self;
  final $Res Function(_SearchQueryResponse) _then;

/// Create a copy of SearchQueryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? query = null,Object? searchedAt = null,}) {
  return _then(_SearchQueryResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,searchedAt: null == searchedAt ? _self.searchedAt : searchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
