// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_query_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchQueryUpdateRequest {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Query') String get query;
/// Create a copy of SearchQueryUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchQueryUpdateRequestCopyWith<SearchQueryUpdateRequest> get copyWith => _$SearchQueryUpdateRequestCopyWithImpl<SearchQueryUpdateRequest>(this as SearchQueryUpdateRequest, _$identity);

  /// Serializes this SearchQueryUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQueryUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,query);

@override
String toString() {
  return 'SearchQueryUpdateRequest(id: $id, query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchQueryUpdateRequestCopyWith<$Res>  {
  factory $SearchQueryUpdateRequestCopyWith(SearchQueryUpdateRequest value, $Res Function(SearchQueryUpdateRequest) _then) = _$SearchQueryUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Query') String query
});




}
/// @nodoc
class _$SearchQueryUpdateRequestCopyWithImpl<$Res>
    implements $SearchQueryUpdateRequestCopyWith<$Res> {
  _$SearchQueryUpdateRequestCopyWithImpl(this._self, this._then);

  final SearchQueryUpdateRequest _self;
  final $Res Function(SearchQueryUpdateRequest) _then;

/// Create a copy of SearchQueryUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? query = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchQueryUpdateRequest].
extension SearchQueryUpdateRequestPatterns on SearchQueryUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchQueryUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchQueryUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchQueryUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _SearchQueryUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchQueryUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SearchQueryUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Query')  String query)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchQueryUpdateRequest() when $default != null:
return $default(_that.id,_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Query')  String query)  $default,) {final _that = this;
switch (_that) {
case _SearchQueryUpdateRequest():
return $default(_that.id,_that.query);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Query')  String query)?  $default,) {final _that = this;
switch (_that) {
case _SearchQueryUpdateRequest() when $default != null:
return $default(_that.id,_that.query);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchQueryUpdateRequest implements SearchQueryUpdateRequest {
  const _SearchQueryUpdateRequest({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Query') required this.query});
  factory _SearchQueryUpdateRequest.fromJson(Map<String, dynamic> json) => _$SearchQueryUpdateRequestFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Query') final  String query;

/// Create a copy of SearchQueryUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchQueryUpdateRequestCopyWith<_SearchQueryUpdateRequest> get copyWith => __$SearchQueryUpdateRequestCopyWithImpl<_SearchQueryUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchQueryUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchQueryUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.query, query) || other.query == query));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,query);

@override
String toString() {
  return 'SearchQueryUpdateRequest(id: $id, query: $query)';
}


}

/// @nodoc
abstract mixin class _$SearchQueryUpdateRequestCopyWith<$Res> implements $SearchQueryUpdateRequestCopyWith<$Res> {
  factory _$SearchQueryUpdateRequestCopyWith(_SearchQueryUpdateRequest value, $Res Function(_SearchQueryUpdateRequest) _then) = __$SearchQueryUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Query') String query
});




}
/// @nodoc
class __$SearchQueryUpdateRequestCopyWithImpl<$Res>
    implements _$SearchQueryUpdateRequestCopyWith<$Res> {
  __$SearchQueryUpdateRequestCopyWithImpl(this._self, this._then);

  final _SearchQueryUpdateRequest _self;
  final $Res Function(_SearchQueryUpdateRequest) _then;

/// Create a copy of SearchQueryUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? query = null,}) {
  return _then(_SearchQueryUpdateRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
