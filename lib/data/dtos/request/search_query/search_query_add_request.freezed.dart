// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_query_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchQueryAddRequest {

@JsonKey(name: 'UserId') String get userId;@JsonKey(name: 'Query') String get query;
/// Create a copy of SearchQueryAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchQueryAddRequestCopyWith<SearchQueryAddRequest> get copyWith => _$SearchQueryAddRequestCopyWithImpl<SearchQueryAddRequest>(this as SearchQueryAddRequest, _$identity);

  /// Serializes this SearchQueryAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQueryAddRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,query);

@override
String toString() {
  return 'SearchQueryAddRequest(userId: $userId, query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchQueryAddRequestCopyWith<$Res>  {
  factory $SearchQueryAddRequestCopyWith(SearchQueryAddRequest value, $Res Function(SearchQueryAddRequest) _then) = _$SearchQueryAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'Query') String query
});




}
/// @nodoc
class _$SearchQueryAddRequestCopyWithImpl<$Res>
    implements $SearchQueryAddRequestCopyWith<$Res> {
  _$SearchQueryAddRequestCopyWithImpl(this._self, this._then);

  final SearchQueryAddRequest _self;
  final $Res Function(SearchQueryAddRequest) _then;

/// Create a copy of SearchQueryAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? query = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchQueryAddRequest].
extension SearchQueryAddRequestPatterns on SearchQueryAddRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchQueryAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchQueryAddRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchQueryAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _SearchQueryAddRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchQueryAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SearchQueryAddRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Query')  String query)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchQueryAddRequest() when $default != null:
return $default(_that.userId,_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Query')  String query)  $default,) {final _that = this;
switch (_that) {
case _SearchQueryAddRequest():
return $default(_that.userId,_that.query);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'Query')  String query)?  $default,) {final _that = this;
switch (_that) {
case _SearchQueryAddRequest() when $default != null:
return $default(_that.userId,_that.query);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchQueryAddRequest implements SearchQueryAddRequest {
  const _SearchQueryAddRequest({@JsonKey(name: 'UserId') required this.userId, @JsonKey(name: 'Query') required this.query});
  factory _SearchQueryAddRequest.fromJson(Map<String, dynamic> json) => _$SearchQueryAddRequestFromJson(json);

@override@JsonKey(name: 'UserId') final  String userId;
@override@JsonKey(name: 'Query') final  String query;

/// Create a copy of SearchQueryAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchQueryAddRequestCopyWith<_SearchQueryAddRequest> get copyWith => __$SearchQueryAddRequestCopyWithImpl<_SearchQueryAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchQueryAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchQueryAddRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,query);

@override
String toString() {
  return 'SearchQueryAddRequest(userId: $userId, query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchQueryAddRequestCopyWith<$Res> implements $SearchQueryAddRequestCopyWith<$Res> {
  factory _$SearchQueryAddRequestCopyWith(_SearchQueryAddRequest value, $Res Function(_SearchQueryAddRequest) _then) = __$SearchQueryAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'Query') String query
});




}
/// @nodoc
class __$SearchQueryAddRequestCopyWithImpl<$Res>
    implements _$SearchQueryAddRequestCopyWith<$Res> {
  __$SearchQueryAddRequestCopyWithImpl(this._self, this._then);

  final _SearchQueryAddRequest _self;
  final $Res Function(_SearchQueryAddRequest) _then;

/// Create a copy of SearchQueryAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? query = null,}) {
  return _then(_SearchQueryAddRequest(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
