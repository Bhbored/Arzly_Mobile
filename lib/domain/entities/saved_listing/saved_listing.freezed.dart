// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedListing {

 String get id; String get userId; String get listingId; DateTime get savedAt; DateTime? get deletedAt;
/// Create a copy of SavedListing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedListingCopyWith<SavedListing> get copyWith => _$SavedListingCopyWithImpl<SavedListing>(this as SavedListing, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedListing&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.savedAt, savedAt) || other.savedAt == savedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,listingId,savedAt,deletedAt);

@override
String toString() {
  return 'SavedListing(id: $id, userId: $userId, listingId: $listingId, savedAt: $savedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $SavedListingCopyWith<$Res>  {
  factory $SavedListingCopyWith(SavedListing value, $Res Function(SavedListing) _then) = _$SavedListingCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String listingId, DateTime savedAt, DateTime? deletedAt
});




}
/// @nodoc
class _$SavedListingCopyWithImpl<$Res>
    implements $SavedListingCopyWith<$Res> {
  _$SavedListingCopyWithImpl(this._self, this._then);

  final SavedListing _self;
  final $Res Function(SavedListing) _then;

/// Create a copy of SavedListing
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


/// Adds pattern-matching-related methods to [SavedListing].
extension SavedListingPatterns on SavedListing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedListing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedListing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedListing value)  $default,){
final _that = this;
switch (_that) {
case _SavedListing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedListing value)?  $default,){
final _that = this;
switch (_that) {
case _SavedListing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String listingId,  DateTime savedAt,  DateTime? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedListing() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String listingId,  DateTime savedAt,  DateTime? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _SavedListing():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String listingId,  DateTime savedAt,  DateTime? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _SavedListing() when $default != null:
return $default(_that.id,_that.userId,_that.listingId,_that.savedAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc


class _SavedListing implements SavedListing {
  const _SavedListing({required this.id, required this.userId, required this.listingId, required this.savedAt, this.deletedAt});
  

@override final  String id;
@override final  String userId;
@override final  String listingId;
@override final  DateTime savedAt;
@override final  DateTime? deletedAt;

/// Create a copy of SavedListing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedListingCopyWith<_SavedListing> get copyWith => __$SavedListingCopyWithImpl<_SavedListing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedListing&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.savedAt, savedAt) || other.savedAt == savedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,listingId,savedAt,deletedAt);

@override
String toString() {
  return 'SavedListing(id: $id, userId: $userId, listingId: $listingId, savedAt: $savedAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$SavedListingCopyWith<$Res> implements $SavedListingCopyWith<$Res> {
  factory _$SavedListingCopyWith(_SavedListing value, $Res Function(_SavedListing) _then) = __$SavedListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String listingId, DateTime savedAt, DateTime? deletedAt
});




}
/// @nodoc
class __$SavedListingCopyWithImpl<$Res>
    implements _$SavedListingCopyWith<$Res> {
  __$SavedListingCopyWithImpl(this._self, this._then);

  final _SavedListing _self;
  final $Res Function(_SavedListing) _then;

/// Create a copy of SavedListing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? listingId = null,Object? savedAt = null,Object? deletedAt = freezed,}) {
  return _then(_SavedListing(
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
