// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_listing_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedListingAddRequest {

@JsonKey(name: 'UserId') String get userId;@JsonKey(name: 'ListingId') String get listingId;
/// Create a copy of SavedListingAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedListingAddRequestCopyWith<SavedListingAddRequest> get copyWith => _$SavedListingAddRequestCopyWithImpl<SavedListingAddRequest>(this as SavedListingAddRequest, _$identity);

  /// Serializes this SavedListingAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedListingAddRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,listingId);

@override
String toString() {
  return 'SavedListingAddRequest(userId: $userId, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class $SavedListingAddRequestCopyWith<$Res>  {
  factory $SavedListingAddRequestCopyWith(SavedListingAddRequest value, $Res Function(SavedListingAddRequest) _then) = _$SavedListingAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'ListingId') String listingId
});




}
/// @nodoc
class _$SavedListingAddRequestCopyWithImpl<$Res>
    implements $SavedListingAddRequestCopyWith<$Res> {
  _$SavedListingAddRequestCopyWithImpl(this._self, this._then);

  final SavedListingAddRequest _self;
  final $Res Function(SavedListingAddRequest) _then;

/// Create a copy of SavedListingAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? listingId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedListingAddRequest].
extension SavedListingAddRequestPatterns on SavedListingAddRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedListingAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedListingAddRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedListingAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _SavedListingAddRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedListingAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SavedListingAddRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'ListingId')  String listingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedListingAddRequest() when $default != null:
return $default(_that.userId,_that.listingId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'ListingId')  String listingId)  $default,) {final _that = this;
switch (_that) {
case _SavedListingAddRequest():
return $default(_that.userId,_that.listingId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'ListingId')  String listingId)?  $default,) {final _that = this;
switch (_that) {
case _SavedListingAddRequest() when $default != null:
return $default(_that.userId,_that.listingId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedListingAddRequest implements SavedListingAddRequest {
  const _SavedListingAddRequest({@JsonKey(name: 'UserId') required this.userId, @JsonKey(name: 'ListingId') required this.listingId});
  factory _SavedListingAddRequest.fromJson(Map<String, dynamic> json) => _$SavedListingAddRequestFromJson(json);

@override@JsonKey(name: 'UserId') final  String userId;
@override@JsonKey(name: 'ListingId') final  String listingId;

/// Create a copy of SavedListingAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedListingAddRequestCopyWith<_SavedListingAddRequest> get copyWith => __$SavedListingAddRequestCopyWithImpl<_SavedListingAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedListingAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedListingAddRequest&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,listingId);

@override
String toString() {
  return 'SavedListingAddRequest(userId: $userId, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class _$SavedListingAddRequestCopyWith<$Res> implements $SavedListingAddRequestCopyWith<$Res> {
  factory _$SavedListingAddRequestCopyWith(_SavedListingAddRequest value, $Res Function(_SavedListingAddRequest) _then) = __$SavedListingAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'ListingId') String listingId
});




}
/// @nodoc
class __$SavedListingAddRequestCopyWithImpl<$Res>
    implements _$SavedListingAddRequestCopyWith<$Res> {
  __$SavedListingAddRequestCopyWithImpl(this._self, this._then);

  final _SavedListingAddRequest _self;
  final $Res Function(_SavedListingAddRequest) _then;

/// Create a copy of SavedListingAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? listingId = null,}) {
  return _then(_SavedListingAddRequest(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
