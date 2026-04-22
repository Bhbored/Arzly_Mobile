// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketMessageResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'TicketId') String get ticketId;@JsonKey(name: 'SenderId') String get senderId;@JsonKey(name: 'ReceiverId') String get receiverId;@JsonKey(name: 'Message') String get message;@JsonKey(name: 'SentAt') DateTime get sentAt;@JsonKey(name: 'IsInternalNote') bool get isInternalNote;
/// Create a copy of TicketMessageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketMessageResponseCopyWith<TicketMessageResponse> get copyWith => _$TicketMessageResponseCopyWithImpl<TicketMessageResponse>(this as TicketMessageResponse, _$identity);

  /// Serializes this TicketMessageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketMessageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.message, message) || other.message == message)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isInternalNote, isInternalNote) || other.isInternalNote == isInternalNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketId,senderId,receiverId,message,sentAt,isInternalNote);

@override
String toString() {
  return 'TicketMessageResponse(id: $id, ticketId: $ticketId, senderId: $senderId, receiverId: $receiverId, message: $message, sentAt: $sentAt, isInternalNote: $isInternalNote)';
}


}

/// @nodoc
abstract mixin class $TicketMessageResponseCopyWith<$Res>  {
  factory $TicketMessageResponseCopyWith(TicketMessageResponse value, $Res Function(TicketMessageResponse) _then) = _$TicketMessageResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'TicketId') String ticketId,@JsonKey(name: 'SenderId') String senderId,@JsonKey(name: 'ReceiverId') String receiverId,@JsonKey(name: 'Message') String message,@JsonKey(name: 'SentAt') DateTime sentAt,@JsonKey(name: 'IsInternalNote') bool isInternalNote
});




}
/// @nodoc
class _$TicketMessageResponseCopyWithImpl<$Res>
    implements $TicketMessageResponseCopyWith<$Res> {
  _$TicketMessageResponseCopyWithImpl(this._self, this._then);

  final TicketMessageResponse _self;
  final $Res Function(TicketMessageResponse) _then;

/// Create a copy of TicketMessageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ticketId = null,Object? senderId = null,Object? receiverId = null,Object? message = null,Object? sentAt = null,Object? isInternalNote = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,isInternalNote: null == isInternalNote ? _self.isInternalNote : isInternalNote // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketMessageResponse].
extension TicketMessageResponsePatterns on TicketMessageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketMessageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketMessageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketMessageResponse value)  $default,){
final _that = this;
switch (_that) {
case _TicketMessageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketMessageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TicketMessageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Message')  String message, @JsonKey(name: 'SentAt')  DateTime sentAt, @JsonKey(name: 'IsInternalNote')  bool isInternalNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketMessageResponse() when $default != null:
return $default(_that.id,_that.ticketId,_that.senderId,_that.receiverId,_that.message,_that.sentAt,_that.isInternalNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Message')  String message, @JsonKey(name: 'SentAt')  DateTime sentAt, @JsonKey(name: 'IsInternalNote')  bool isInternalNote)  $default,) {final _that = this;
switch (_that) {
case _TicketMessageResponse():
return $default(_that.id,_that.ticketId,_that.senderId,_that.receiverId,_that.message,_that.sentAt,_that.isInternalNote);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Message')  String message, @JsonKey(name: 'SentAt')  DateTime sentAt, @JsonKey(name: 'IsInternalNote')  bool isInternalNote)?  $default,) {final _that = this;
switch (_that) {
case _TicketMessageResponse() when $default != null:
return $default(_that.id,_that.ticketId,_that.senderId,_that.receiverId,_that.message,_that.sentAt,_that.isInternalNote);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketMessageResponse implements TicketMessageResponse {
  const _TicketMessageResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'TicketId') required this.ticketId, @JsonKey(name: 'SenderId') required this.senderId, @JsonKey(name: 'ReceiverId') required this.receiverId, @JsonKey(name: 'Message') required this.message, @JsonKey(name: 'SentAt') required this.sentAt, @JsonKey(name: 'IsInternalNote') required this.isInternalNote});
  factory _TicketMessageResponse.fromJson(Map<String, dynamic> json) => _$TicketMessageResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'TicketId') final  String ticketId;
@override@JsonKey(name: 'SenderId') final  String senderId;
@override@JsonKey(name: 'ReceiverId') final  String receiverId;
@override@JsonKey(name: 'Message') final  String message;
@override@JsonKey(name: 'SentAt') final  DateTime sentAt;
@override@JsonKey(name: 'IsInternalNote') final  bool isInternalNote;

/// Create a copy of TicketMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketMessageResponseCopyWith<_TicketMessageResponse> get copyWith => __$TicketMessageResponseCopyWithImpl<_TicketMessageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketMessageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketMessageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.message, message) || other.message == message)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isInternalNote, isInternalNote) || other.isInternalNote == isInternalNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ticketId,senderId,receiverId,message,sentAt,isInternalNote);

@override
String toString() {
  return 'TicketMessageResponse(id: $id, ticketId: $ticketId, senderId: $senderId, receiverId: $receiverId, message: $message, sentAt: $sentAt, isInternalNote: $isInternalNote)';
}


}

/// @nodoc
abstract mixin class _$TicketMessageResponseCopyWith<$Res> implements $TicketMessageResponseCopyWith<$Res> {
  factory _$TicketMessageResponseCopyWith(_TicketMessageResponse value, $Res Function(_TicketMessageResponse) _then) = __$TicketMessageResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'TicketId') String ticketId,@JsonKey(name: 'SenderId') String senderId,@JsonKey(name: 'ReceiverId') String receiverId,@JsonKey(name: 'Message') String message,@JsonKey(name: 'SentAt') DateTime sentAt,@JsonKey(name: 'IsInternalNote') bool isInternalNote
});




}
/// @nodoc
class __$TicketMessageResponseCopyWithImpl<$Res>
    implements _$TicketMessageResponseCopyWith<$Res> {
  __$TicketMessageResponseCopyWithImpl(this._self, this._then);

  final _TicketMessageResponse _self;
  final $Res Function(_TicketMessageResponse) _then;

/// Create a copy of TicketMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketId = null,Object? senderId = null,Object? receiverId = null,Object? message = null,Object? sentAt = null,Object? isInternalNote = null,}) {
  return _then(_TicketMessageResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,isInternalNote: null == isInternalNote ? _self.isInternalNote : isInternalNote // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
