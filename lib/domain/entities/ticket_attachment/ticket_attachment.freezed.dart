// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketAttachment {

 String get id; String get ticketId; String get fileUrl; String? get fileName; String? get contentType; int get fileSize; DateTime get uploadedAt;
/// Create a copy of TicketAttachment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketAttachmentCopyWith<TicketAttachment> get copyWith => _$TicketAttachmentCopyWithImpl<TicketAttachment>(this as TicketAttachment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketAttachment&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketId,fileUrl,fileName,contentType,fileSize,uploadedAt);

@override
String toString() {
  return 'TicketAttachment(id: $id, ticketId: $ticketId, fileUrl: $fileUrl, fileName: $fileName, contentType: $contentType, fileSize: $fileSize, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class $TicketAttachmentCopyWith<$Res>  {
  factory $TicketAttachmentCopyWith(TicketAttachment value, $Res Function(TicketAttachment) _then) = _$TicketAttachmentCopyWithImpl;
@useResult
$Res call({
 String id, String ticketId, String fileUrl, String? fileName, String? contentType, int fileSize, DateTime uploadedAt
});




}
/// @nodoc
class _$TicketAttachmentCopyWithImpl<$Res>
    implements $TicketAttachmentCopyWith<$Res> {
  _$TicketAttachmentCopyWithImpl(this._self, this._then);

  final TicketAttachment _self;
  final $Res Function(TicketAttachment) _then;

/// Create a copy of TicketAttachment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketId = null,Object? fileUrl = null,Object? fileName = freezed,Object? contentType = freezed,Object? fileSize = null,Object? uploadedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,uploadedAt: null == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketAttachment].
extension TicketAttachmentPatterns on TicketAttachment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketAttachment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketAttachment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketAttachment value)  $default,){
final _that = this;
switch (_that) {
case _TicketAttachment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketAttachment value)?  $default,){
final _that = this;
switch (_that) {
case _TicketAttachment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String ticketId,  String fileUrl,  String? fileName,  String? contentType,  int fileSize,  DateTime uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketAttachment() when $default != null:
return $default(_that.id,_that.ticketId,_that.fileUrl,_that.fileName,_that.contentType,_that.fileSize,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String ticketId,  String fileUrl,  String? fileName,  String? contentType,  int fileSize,  DateTime uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _TicketAttachment():
return $default(_that.id,_that.ticketId,_that.fileUrl,_that.fileName,_that.contentType,_that.fileSize,_that.uploadedAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String ticketId,  String fileUrl,  String? fileName,  String? contentType,  int fileSize,  DateTime uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _TicketAttachment() when $default != null:
return $default(_that.id,_that.ticketId,_that.fileUrl,_that.fileName,_that.contentType,_that.fileSize,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc


class _TicketAttachment implements TicketAttachment {
  const _TicketAttachment({required this.id, required this.ticketId, required this.fileUrl, this.fileName, this.contentType, required this.fileSize, required this.uploadedAt});
  

@override final  String id;
@override final  String ticketId;
@override final  String fileUrl;
@override final  String? fileName;
@override final  String? contentType;
@override final  int fileSize;
@override final  DateTime uploadedAt;

/// Create a copy of TicketAttachment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketAttachmentCopyWith<_TicketAttachment> get copyWith => __$TicketAttachmentCopyWithImpl<_TicketAttachment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketAttachment&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketId,fileUrl,fileName,contentType,fileSize,uploadedAt);

@override
String toString() {
  return 'TicketAttachment(id: $id, ticketId: $ticketId, fileUrl: $fileUrl, fileName: $fileName, contentType: $contentType, fileSize: $fileSize, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$TicketAttachmentCopyWith<$Res> implements $TicketAttachmentCopyWith<$Res> {
  factory _$TicketAttachmentCopyWith(_TicketAttachment value, $Res Function(_TicketAttachment) _then) = __$TicketAttachmentCopyWithImpl;
@override @useResult
$Res call({
 String id, String ticketId, String fileUrl, String? fileName, String? contentType, int fileSize, DateTime uploadedAt
});




}
/// @nodoc
class __$TicketAttachmentCopyWithImpl<$Res>
    implements _$TicketAttachmentCopyWith<$Res> {
  __$TicketAttachmentCopyWithImpl(this._self, this._then);

  final _TicketAttachment _self;
  final $Res Function(_TicketAttachment) _then;

/// Create a copy of TicketAttachment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketId = null,Object? fileUrl = null,Object? fileName = freezed,Object? contentType = freezed,Object? fileSize = null,Object? uploadedAt = null,}) {
  return _then(_TicketAttachment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,uploadedAt: null == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
