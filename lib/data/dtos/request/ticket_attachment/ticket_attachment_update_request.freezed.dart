// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_attachment_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketAttachmentUpdateRequest {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'FileName') String? get fileName;@JsonKey(name: 'ContentType') String? get contentType;
/// Create a copy of TicketAttachmentUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketAttachmentUpdateRequestCopyWith<TicketAttachmentUpdateRequest> get copyWith => _$TicketAttachmentUpdateRequestCopyWithImpl<TicketAttachmentUpdateRequest>(this as TicketAttachmentUpdateRequest, _$identity);

  /// Serializes this TicketAttachmentUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketAttachmentUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileName,contentType);

@override
String toString() {
  return 'TicketAttachmentUpdateRequest(id: $id, fileName: $fileName, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class $TicketAttachmentUpdateRequestCopyWith<$Res>  {
  factory $TicketAttachmentUpdateRequestCopyWith(TicketAttachmentUpdateRequest value, $Res Function(TicketAttachmentUpdateRequest) _then) = _$TicketAttachmentUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'FileName') String? fileName,@JsonKey(name: 'ContentType') String? contentType
});




}
/// @nodoc
class _$TicketAttachmentUpdateRequestCopyWithImpl<$Res>
    implements $TicketAttachmentUpdateRequestCopyWith<$Res> {
  _$TicketAttachmentUpdateRequestCopyWithImpl(this._self, this._then);

  final TicketAttachmentUpdateRequest _self;
  final $Res Function(TicketAttachmentUpdateRequest) _then;

/// Create a copy of TicketAttachmentUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fileName = freezed,Object? contentType = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketAttachmentUpdateRequest].
extension TicketAttachmentUpdateRequestPatterns on TicketAttachmentUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketAttachmentUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketAttachmentUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketAttachmentUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketAttachmentUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'FileName')  String? fileName, @JsonKey(name: 'ContentType')  String? contentType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketAttachmentUpdateRequest() when $default != null:
return $default(_that.id,_that.fileName,_that.contentType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'FileName')  String? fileName, @JsonKey(name: 'ContentType')  String? contentType)  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentUpdateRequest():
return $default(_that.id,_that.fileName,_that.contentType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'FileName')  String? fileName, @JsonKey(name: 'ContentType')  String? contentType)?  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentUpdateRequest() when $default != null:
return $default(_that.id,_that.fileName,_that.contentType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketAttachmentUpdateRequest implements TicketAttachmentUpdateRequest {
  const _TicketAttachmentUpdateRequest({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'FileName') this.fileName, @JsonKey(name: 'ContentType') this.contentType});
  factory _TicketAttachmentUpdateRequest.fromJson(Map<String, dynamic> json) => _$TicketAttachmentUpdateRequestFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'FileName') final  String? fileName;
@override@JsonKey(name: 'ContentType') final  String? contentType;

/// Create a copy of TicketAttachmentUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketAttachmentUpdateRequestCopyWith<_TicketAttachmentUpdateRequest> get copyWith => __$TicketAttachmentUpdateRequestCopyWithImpl<_TicketAttachmentUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketAttachmentUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketAttachmentUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileName,contentType);

@override
String toString() {
  return 'TicketAttachmentUpdateRequest(id: $id, fileName: $fileName, contentType: $contentType)';
}


}

/// @nodoc
abstract mixin class _$TicketAttachmentUpdateRequestCopyWith<$Res> implements $TicketAttachmentUpdateRequestCopyWith<$Res> {
  factory _$TicketAttachmentUpdateRequestCopyWith(_TicketAttachmentUpdateRequest value, $Res Function(_TicketAttachmentUpdateRequest) _then) = __$TicketAttachmentUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'FileName') String? fileName,@JsonKey(name: 'ContentType') String? contentType
});




}
/// @nodoc
class __$TicketAttachmentUpdateRequestCopyWithImpl<$Res>
    implements _$TicketAttachmentUpdateRequestCopyWith<$Res> {
  __$TicketAttachmentUpdateRequestCopyWithImpl(this._self, this._then);

  final _TicketAttachmentUpdateRequest _self;
  final $Res Function(_TicketAttachmentUpdateRequest) _then;

/// Create a copy of TicketAttachmentUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fileName = freezed,Object? contentType = freezed,}) {
  return _then(_TicketAttachmentUpdateRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
