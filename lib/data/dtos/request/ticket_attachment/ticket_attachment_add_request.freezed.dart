// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_attachment_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketAttachmentAddRequest {

@JsonKey(name: 'TicketId') String get ticketId;@JsonKey(name: 'FileUrl') String get fileUrl;@JsonKey(name: 'FileName') String? get fileName;@JsonKey(name: 'ContentType') String? get contentType;@JsonKey(name: 'FileSize') int get fileSize;
/// Create a copy of TicketAttachmentAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketAttachmentAddRequestCopyWith<TicketAttachmentAddRequest> get copyWith => _$TicketAttachmentAddRequestCopyWithImpl<TicketAttachmentAddRequest>(this as TicketAttachmentAddRequest, _$identity);

  /// Serializes this TicketAttachmentAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketAttachmentAddRequest&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,fileUrl,fileName,contentType,fileSize);

@override
String toString() {
  return 'TicketAttachmentAddRequest(ticketId: $ticketId, fileUrl: $fileUrl, fileName: $fileName, contentType: $contentType, fileSize: $fileSize)';
}


}

/// @nodoc
abstract mixin class $TicketAttachmentAddRequestCopyWith<$Res>  {
  factory $TicketAttachmentAddRequestCopyWith(TicketAttachmentAddRequest value, $Res Function(TicketAttachmentAddRequest) _then) = _$TicketAttachmentAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'TicketId') String ticketId,@JsonKey(name: 'FileUrl') String fileUrl,@JsonKey(name: 'FileName') String? fileName,@JsonKey(name: 'ContentType') String? contentType,@JsonKey(name: 'FileSize') int fileSize
});




}
/// @nodoc
class _$TicketAttachmentAddRequestCopyWithImpl<$Res>
    implements $TicketAttachmentAddRequestCopyWith<$Res> {
  _$TicketAttachmentAddRequestCopyWithImpl(this._self, this._then);

  final TicketAttachmentAddRequest _self;
  final $Res Function(TicketAttachmentAddRequest) _then;

/// Create a copy of TicketAttachmentAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? fileUrl = null,Object? fileName = freezed,Object? contentType = freezed,Object? fileSize = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketAttachmentAddRequest].
extension TicketAttachmentAddRequestPatterns on TicketAttachmentAddRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketAttachmentAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketAttachmentAddRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketAttachmentAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentAddRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketAttachmentAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TicketAttachmentAddRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'FileUrl')  String fileUrl, @JsonKey(name: 'FileName')  String? fileName, @JsonKey(name: 'ContentType')  String? contentType, @JsonKey(name: 'FileSize')  int fileSize)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketAttachmentAddRequest() when $default != null:
return $default(_that.ticketId,_that.fileUrl,_that.fileName,_that.contentType,_that.fileSize);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'FileUrl')  String fileUrl, @JsonKey(name: 'FileName')  String? fileName, @JsonKey(name: 'ContentType')  String? contentType, @JsonKey(name: 'FileSize')  int fileSize)  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentAddRequest():
return $default(_that.ticketId,_that.fileUrl,_that.fileName,_that.contentType,_that.fileSize);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'FileUrl')  String fileUrl, @JsonKey(name: 'FileName')  String? fileName, @JsonKey(name: 'ContentType')  String? contentType, @JsonKey(name: 'FileSize')  int fileSize)?  $default,) {final _that = this;
switch (_that) {
case _TicketAttachmentAddRequest() when $default != null:
return $default(_that.ticketId,_that.fileUrl,_that.fileName,_that.contentType,_that.fileSize);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketAttachmentAddRequest implements TicketAttachmentAddRequest {
  const _TicketAttachmentAddRequest({@JsonKey(name: 'TicketId') required this.ticketId, @JsonKey(name: 'FileUrl') required this.fileUrl, @JsonKey(name: 'FileName') this.fileName, @JsonKey(name: 'ContentType') this.contentType, @JsonKey(name: 'FileSize') required this.fileSize});
  factory _TicketAttachmentAddRequest.fromJson(Map<String, dynamic> json) => _$TicketAttachmentAddRequestFromJson(json);

@override@JsonKey(name: 'TicketId') final  String ticketId;
@override@JsonKey(name: 'FileUrl') final  String fileUrl;
@override@JsonKey(name: 'FileName') final  String? fileName;
@override@JsonKey(name: 'ContentType') final  String? contentType;
@override@JsonKey(name: 'FileSize') final  int fileSize;

/// Create a copy of TicketAttachmentAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketAttachmentAddRequestCopyWith<_TicketAttachmentAddRequest> get copyWith => __$TicketAttachmentAddRequestCopyWithImpl<_TicketAttachmentAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketAttachmentAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketAttachmentAddRequest&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.fileUrl, fileUrl) || other.fileUrl == fileUrl)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,fileUrl,fileName,contentType,fileSize);

@override
String toString() {
  return 'TicketAttachmentAddRequest(ticketId: $ticketId, fileUrl: $fileUrl, fileName: $fileName, contentType: $contentType, fileSize: $fileSize)';
}


}

/// @nodoc
abstract mixin class _$TicketAttachmentAddRequestCopyWith<$Res> implements $TicketAttachmentAddRequestCopyWith<$Res> {
  factory _$TicketAttachmentAddRequestCopyWith(_TicketAttachmentAddRequest value, $Res Function(_TicketAttachmentAddRequest) _then) = __$TicketAttachmentAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'TicketId') String ticketId,@JsonKey(name: 'FileUrl') String fileUrl,@JsonKey(name: 'FileName') String? fileName,@JsonKey(name: 'ContentType') String? contentType,@JsonKey(name: 'FileSize') int fileSize
});




}
/// @nodoc
class __$TicketAttachmentAddRequestCopyWithImpl<$Res>
    implements _$TicketAttachmentAddRequestCopyWith<$Res> {
  __$TicketAttachmentAddRequestCopyWithImpl(this._self, this._then);

  final _TicketAttachmentAddRequest _self;
  final $Res Function(_TicketAttachmentAddRequest) _then;

/// Create a copy of TicketAttachmentAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? fileUrl = null,Object? fileName = freezed,Object? contentType = freezed,Object? fileSize = null,}) {
  return _then(_TicketAttachmentAddRequest(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,fileUrl: null == fileUrl ? _self.fileUrl : fileUrl // ignore: cast_nullable_to_non_nullable
as String,fileName: freezed == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
