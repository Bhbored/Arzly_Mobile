// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchQuery {

 String get id; String get userId; String get query; DateTime get searchedAt;
/// Create a copy of SearchQuery
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchQueryCopyWith<SearchQuery> get copyWith => _$SearchQueryCopyWithImpl<SearchQuery>(this as SearchQuery, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQuery&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.query, query) || other.query == query)&&(identical(other.searchedAt, searchedAt) || other.searchedAt == searchedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,query,searchedAt);

@override
String toString() {
  return 'SearchQuery(id: $id, userId: $userId, query: $query, searchedAt: $searchedAt)';
}


}

/// @nodoc
abstract mixin class $SearchQueryCopyWith<$Res>  {
  factory $SearchQueryCopyWith(SearchQuery value, $Res Function(SearchQuery) _then) = _$SearchQueryCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String query, DateTime searchedAt
});




}
/// @nodoc
class _$SearchQueryCopyWithImpl<$Res>
    implements $SearchQueryCopyWith<$Res> {
  _$SearchQueryCopyWithImpl(this._self, this._then);

  final SearchQuery _self;
  final $Res Function(SearchQuery) _then;

/// Create a copy of SearchQuery
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


/// Adds pattern-matching-related methods to [SearchQuery].
extension SearchQueryPatterns on SearchQuery {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchQuery value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchQuery() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchQuery value)  $default,){
final _that = this;
switch (_that) {
case _SearchQuery():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchQuery value)?  $default,){
final _that = this;
switch (_that) {
case _SearchQuery() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String query,  DateTime searchedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchQuery() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String query,  DateTime searchedAt)  $default,) {final _that = this;
switch (_that) {
case _SearchQuery():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String query,  DateTime searchedAt)?  $default,) {final _that = this;
switch (_that) {
case _SearchQuery() when $default != null:
return $default(_that.id,_that.userId,_that.query,_that.searchedAt);case _:
  return null;

}
}

}

/// @nodoc


class _SearchQuery implements SearchQuery {
  const _SearchQuery({required this.id, required this.userId, required this.query, required this.searchedAt});
  

@override final  String id;
@override final  String userId;
@override final  String query;
@override final  DateTime searchedAt;

/// Create a copy of SearchQuery
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchQueryCopyWith<_SearchQuery> get copyWith => __$SearchQueryCopyWithImpl<_SearchQuery>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchQuery&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.query, query) || other.query == query)&&(identical(other.searchedAt, searchedAt) || other.searchedAt == searchedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,query,searchedAt);

@override
String toString() {
  return 'SearchQuery(id: $id, userId: $userId, query: $query, searchedAt: $searchedAt)';
}


}

/// @nodoc
abstract mixin class _$SearchQueryCopyWith<$Res> implements $SearchQueryCopyWith<$Res> {
  factory _$SearchQueryCopyWith(_SearchQuery value, $Res Function(_SearchQuery) _then) = __$SearchQueryCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String query, DateTime searchedAt
});




}
/// @nodoc
class __$SearchQueryCopyWithImpl<$Res>
    implements _$SearchQueryCopyWith<$Res> {
  __$SearchQueryCopyWithImpl(this._self, this._then);

  final _SearchQuery _self;
  final $Res Function(_SearchQuery) _then;

/// Create a copy of SearchQuery
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? query = null,Object? searchedAt = null,}) {
  return _then(_SearchQuery(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,searchedAt: null == searchedAt ? _self.searchedAt : searchedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
