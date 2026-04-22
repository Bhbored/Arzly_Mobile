// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_listing_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedListingUpdateRequest {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'DeletedAt') DateTime? get deletedAt;
/// Create a copy of SavedListingUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedListingUpdateRequestCopyWith<SavedListingUpdateRequest> get copyWith => _$SavedListingUpdateRequestCopyWithImpl<SavedListingUpdateRequest>(this as SavedListingUpdateRequest, _$identity);

  /// Serializes this SavedListingUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedListingUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deletedAt);

@override
String toString() {
  return 'SavedListingUpdateRequest(id: $id, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $SavedListingUpdateRequestCopyWith<$Res>  {
  factory $SavedListingUpdateRequestCopyWith(SavedListingUpdateRequest value, $Res Function(SavedListingUpdateRequest) _then) = _$SavedListingUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'DeletedAt') DateTime? deletedAt
});




}
/// @nodoc
class _$SavedListingUpdateRequestCopyWithImpl<$Res>
    implements $SavedListingUpdateRequestCopyWith<$Res> {
  _$SavedListingUpdateRequestCopyWithImpl(this._self, this._then);

  final SavedListingUpdateRequest _self;
  final $Res Function(SavedListingUpdateRequest) _then;

/// Create a copy of SavedListingUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedListingUpdateRequest].
extension SavedListingUpdateRequestPatterns on SavedListingUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedListingUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedListingUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedListingUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _SavedListingUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedListingUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SavedListingUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'DeletedAt')  DateTime? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedListingUpdateRequest() when $default != null:
return $default(_that.id,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'DeletedAt')  DateTime? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _SavedListingUpdateRequest():
return $default(_that.id,_that.deletedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'DeletedAt')  DateTime? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _SavedListingUpdateRequest() when $default != null:
return $default(_that.id,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedListingUpdateRequest implements SavedListingUpdateRequest {
  const _SavedListingUpdateRequest({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'DeletedAt') this.deletedAt});
  factory _SavedListingUpdateRequest.fromJson(Map<String, dynamic> json) => _$SavedListingUpdateRequestFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'DeletedAt') final  DateTime? deletedAt;

/// Create a copy of SavedListingUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedListingUpdateRequestCopyWith<_SavedListingUpdateRequest> get copyWith => __$SavedListingUpdateRequestCopyWithImpl<_SavedListingUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedListingUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedListingUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,deletedAt);

@override
String toString() {
  return 'SavedListingUpdateRequest(id: $id, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$SavedListingUpdateRequestCopyWith<$Res> implements $SavedListingUpdateRequestCopyWith<$Res> {
  factory _$SavedListingUpdateRequestCopyWith(_SavedListingUpdateRequest value, $Res Function(_SavedListingUpdateRequest) _then) = __$SavedListingUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'DeletedAt') DateTime? deletedAt
});




}
/// @nodoc
class __$SavedListingUpdateRequestCopyWithImpl<$Res>
    implements _$SavedListingUpdateRequestCopyWith<$Res> {
  __$SavedListingUpdateRequestCopyWithImpl(this._self, this._then);

  final _SavedListingUpdateRequest _self;
  final $Res Function(_SavedListingUpdateRequest) _then;

/// Create a copy of SavedListingUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? deletedAt = freezed,}) {
  return _then(_SavedListingUpdateRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
