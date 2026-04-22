// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_attachment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketAttachmentResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'TicketId') String get ticketId;@JsonKey(name: 'FileUrl') String get fileUrl;@JsonKey(name: 'FileName') String? get fileName;@JsonKey(name: 'ContentType') String? get contentType;@JsonKey(name: 'FileSize') int get fileSize;@JsonKey(name: 'UploadedAt') DateTime get uploadedAt;
/// Create a copy of TicketAttachmentResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketAttachmentResponseCopyWith<TicketAttachmentResponse> get copyWith => _$TicketAttachmentResponseCopyWithImpl<TicketAttachmentResponse>(this as TicketAttachmentResponse, _$identity);

  /// Serializes this TicketAttachmentResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketAttachmentResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketId,fileUrl,fileName,contentType,fileSize,uploadedAt);

@override
String toString() {
  return 'TicketAttachmentResponse(id: $id, ticketId: $ticketId, fileUrl: $fileUrl, fileName: $fileName, contentType: $contentType, fileSize: $fileSize, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class $TicketAttachmentResponseCopyWith<$Res>  {
  factory $TicketAttachmentResponseCopyWith(TicketAttachmentResponse value, $Res Function(TicketAttachmentResponse) _then) = _$TicketAttachmentResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'TicketId') String ticketId,@JsonKey(name: 'FileUrl') String fileUrl,@JsonKey(name: 'FileName') String? fileName,@JsonKey(name: 'ContentType') String? contentType,@JsonKey(name: 'FileSize') int fileSize,@JsonKey(name: 'UploadedAt') DateTime uploadedAt
});




}
/// @nodoc
class _$TicketAttachmentResponseCopyWithImpl<$Res>
    implements $TicketAttachmentResponseCopyWith<$Res> {
  _$TicketAttachmentResponseCopyWithImpl(this._self, this._then);

  final TicketAttachmentResponse _self;
  final $Res Function(TicketAttachmentResponse) _then;

/// Create a copy of TicketAttachmentResponse
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


/// Adds pattern-matching-related methods to [TicketAttachmentResponse].
extension TicketAttachmentResponsePatterns on TicketAttachmentResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketAttachmentResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketAttachmentResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketAttachmentResponse value)  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketAttachmentResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'FileUrl')  String fileUrl, @JsonKey(name: 'FileName')  String? fileName, @JsonKey(name: 'ContentType')  String? contentType, @JsonKey(name: 'FileSize')  int fileSize, @JsonKey(name: 'UploadedAt')  DateTime uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketAttachmentResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'FileUrl')  String fileUrl, @JsonKey(name: 'FileName')  String? fileName, @JsonKey(name: 'ContentType')  String? contentType, @JsonKey(name: 'FileSize')  int fileSize, @JsonKey(name: 'UploadedAt')  DateTime uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'FileUrl')  String fileUrl, @JsonKey(name: 'FileName')  String? fileName, @JsonKey(name: 'ContentType')  String? contentType, @JsonKey(name: 'FileSize')  int fileSize, @JsonKey(name: 'UploadedAt')  DateTime uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentResponse() when $default != null:
return $default(_that.id,_that.ticketId,_that.fileUrl,_that.fileName,_that.contentType,_that.fileSize,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketAttachmentResponse implements TicketAttachmentResponse {
  const _TicketAttachmentResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'TicketId') required this.ticketId, @JsonKey(name: 'FileUrl') required this.fileUrl, @JsonKey(name: 'FileName') this.fileName, @JsonKey(name: 'ContentType') this.contentType, @JsonKey(name: 'FileSize') required this.fileSize, @JsonKey(name: 'UploadedAt') required this.uploadedAt});
  factory _TicketAttachmentResponse.fromJson(Map<String, dynamic> json) => _$TicketAttachmentResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'TicketId') final  String ticketId;
@override@JsonKey(name: 'FileUrl') final  String fileUrl;
@override@JsonKey(name: 'FileName') final  String? fileName;
@override@JsonKey(name: 'ContentType') final  String? contentType;
@override@JsonKey(name: 'FileSize') final  int fileSize;
@override@JsonKey(name: 'UploadedAt') final  DateTime uploadedAt;

/// Create a copy of TicketAttachmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketAttachmentResponseCopyWith<_TicketAttachmentResponse> get copyWith => __$TicketAttachmentResponseCopyWithImpl<_TicketAttachmentResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketAttachmentResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketAttachmentResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketId,fileUrl,fileName,contentType,fileSize,uploadedAt);

@override
String toString() {
  return 'TicketAttachmentResponse(id: $id, ticketId: $ticketId, fileUrl: $fileUrl, fileName: $fileName, contentType: $contentType, fileSize: $fileSize, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$TicketAttachmentResponseCopyWith<$Res> implements $TicketAttachmentResponseCopyWith<$Res> {
  factory _$TicketAttachmentResponseCopyWith(_TicketAttachmentResponse value, $Res Function(_TicketAttachmentResponse) _then) = __$TicketAttachmentResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'TicketId') String ticketId,@JsonKey(name: 'FileUrl') String fileUrl,@JsonKey(name: 'FileName') String? fileName,@JsonKey(name: 'ContentType') String? contentType,@JsonKey(name: 'FileSize') int fileSize,@JsonKey(name: 'UploadedAt') DateTime uploadedAt
});




}
/// @nodoc
class __$TicketAttachmentResponseCopyWithImpl<$Res>
    implements _$TicketAttachmentResponseCopyWith<$Res> {
  __$TicketAttachmentResponseCopyWithImpl(this._self, this._then);

  final _TicketAttachmentResponse _self;
  final $Res Function(_TicketAttachmentResponse) _then;

/// Create a copy of TicketAttachmentResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketId = null,Object? fileUrl = null,Object? fileName = freezed,Object? contentType = freezed,Object? fileSize = null,Object? uploadedAt = null,}) {
  return _then(_TicketAttachmentResponse(
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
