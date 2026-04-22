// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_listing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedListingResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'UserId') String get userId;@JsonKey(name: 'ListingId') String get listingId;@JsonKey(name: 'SavedAt') DateTime get savedAt;@JsonKey(name: 'DeletedAt') DateTime? get deletedAt;
/// Create a copy of SavedListingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedListingResponseCopyWith<SavedListingResponse> get copyWith => _$SavedListingResponseCopyWithImpl<SavedListingResponse>(this as SavedListingResponse, _$identity);

  /// Serializes this SavedListingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedListingResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.savedAt, savedAt) || other.savedAt == savedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,listingId,savedAt,deletedAt);

@override
String toString() {
  return 'SavedListingResponse(id: $id, userId: $userId, listingId: $listingId, savedAt: $savedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $SavedListingResponseCopyWith<$Res>  {
  factory $SavedListingResponseCopyWith(SavedListingResponse value, $Res Function(SavedListingResponse) _then) = _$SavedListingResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'ListingId') String listingId,@JsonKey(name: 'SavedAt') DateTime savedAt,@JsonKey(name: 'DeletedAt') DateTime? deletedAt
});




}
/// @nodoc
class _$SavedListingResponseCopyWithImpl<$Res>
    implements $SavedListingResponseCopyWith<$Res> {
  _$SavedListingResponseCopyWithImpl(this._self, this._then);

  final SavedListingResponse _self;
  final $Res Function(SavedListingResponse) _then;

/// Create a copy of SavedListingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? listingId = null,Object? savedAt = null,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,savedAt: null == savedAt ? _self.savedAt : savedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedListingResponse].
extension SavedListingResponsePatterns on SavedListingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedListingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedListingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedListingResponse value)  $default,){
final _that = this;
switch (_that) {
case _SavedListingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedListingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SavedListingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'ListingId')  String listingId, @JsonKey(name: 'SavedAt')  DateTime savedAt, @JsonKey(name: 'DeletedAt')  DateTime? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedListingResponse() when $default != null:
return $default(_that.id,_that.userId,_that.listingId,_that.savedAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'ListingId')  String listingId, @JsonKey(name: 'SavedAt')  DateTime savedAt, @JsonKey(name: 'DeletedAt')  DateTime? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _SavedListingResponse():
return $default(_that.id,_that.userId,_that.listingId,_that.savedAt,_that.deletedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'ListingId')  String listingId, @JsonKey(name: 'SavedAt')  DateTime savedAt, @JsonKey(name: 'DeletedAt')  DateTime? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _SavedListingResponse() when $default != null:
return $default(_that.id,_that.userId,_that.listingId,_that.savedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedListingResponse implements SavedListingResponse {
  const _SavedListingResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'UserId') required this.userId, @JsonKey(name: 'ListingId') required this.listingId, @JsonKey(name: 'SavedAt') required this.savedAt, @JsonKey(name: 'DeletedAt') this.deletedAt});
  factory _SavedListingResponse.fromJson(Map<String, dynamic> json) => _$SavedListingResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'UserId') final  String userId;
@override@JsonKey(name: 'ListingId') final  String listingId;
@override@JsonKey(name: 'SavedAt') final  DateTime savedAt;
@override@JsonKey(name: 'DeletedAt') final  DateTime? deletedAt;

/// Create a copy of SavedListingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedListingResponseCopyWith<_SavedListingResponse> get copyWith => __$SavedListingResponseCopyWithImpl<_SavedListingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedListingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedListingResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.savedAt, savedAt) || other.savedAt == savedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,listingId,savedAt,deletedAt);

@override
String toString() {
  return 'SavedListingResponse(id: $id, userId: $userId, listingId: $listingId, savedAt: $savedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$SavedListingResponseCopyWith<$Res> implements $SavedListingResponseCopyWith<$Res> {
  factory _$SavedListingResponseCopyWith(_SavedListingResponse value, $Res Function(_SavedListingResponse) _then) = __$SavedListingResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'ListingId') String listingId,@JsonKey(name: 'SavedAt') DateTime savedAt,@JsonKey(name: 'DeletedAt') DateTime? deletedAt
});




}
/// @nodoc
class __$SavedListingResponseCopyWithImpl<$Res>
    implements _$SavedListingResponseCopyWith<$Res> {
  __$SavedListingResponseCopyWithImpl(this._self, this._then);

  final _SavedListingResponse _self;
  final $Res Function(_SavedListingResponse) _then;

/// Create a copy of SavedListingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? listingId = null,Object? savedAt = null,Object? deletedAt = freezed,}) {
  return _then(_SavedListingResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,savedAt: null == savedAt ? _self.savedAt : savedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
