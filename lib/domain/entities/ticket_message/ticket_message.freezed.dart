// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TicketMessage {

 String get id; String get ticketId; String get senderId; String get receiverId; String get message; DateTime get sentAt; bool get isInternalNote;
/// Create a copy of TicketMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketMessageCopyWith<TicketMessage> get copyWith => _$TicketMessageCopyWithImpl<TicketMessage>(this as TicketMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.message, message) || other.message == message)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isInternalNote, isInternalNote) || other.isInternalNote == isInternalNote));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketId,senderId,receiverId,message,sentAt,isInternalNote);

@override
String toString() {
  return 'TicketMessage(id: $id, ticketId: $ticketId, senderId: $senderId, receiverId: $receiverId, message: $message, sentAt: $sentAt, isInternalNote: $isInternalNote)';
}


}

/// @nodoc
abstract mixin class $TicketMessageCopyWith<$Res>  {
  factory $TicketMessageCopyWith(TicketMessage value, $Res Function(TicketMessage) _then) = _$TicketMessageCopyWithImpl;
@useResult
$Res call({
 String id, String ticketId, String senderId, String receiverId, String message, DateTime sentAt, bool isInternalNote
});




}
/// @nodoc
class _$TicketMessageCopyWithImpl<$Res>
    implements $TicketMessageCopyWith<$Res> {
  _$TicketMessageCopyWithImpl(this._self, this._then);

  final TicketMessage _self;
  final $Res Function(TicketMessage) _then;

/// Create a copy of TicketMessage
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


/// Adds pattern-matching-related methods to [TicketMessage].
extension TicketMessagePatterns on TicketMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketMessage value)  $default,){
final _that = this;
switch (_that) {
case _TicketMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketMessage value)?  $default,){
final _that = this;
switch (_that) {
case _TicketMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String ticketId,  String senderId,  String receiverId,  String message,  DateTime sentAt,  bool isInternalNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketMessage() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String ticketId,  String senderId,  String receiverId,  String message,  DateTime sentAt,  bool isInternalNote)  $default,) {final _that = this;
switch (_that) {
case _TicketMessage():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String ticketId,  String senderId,  String receiverId,  String message,  DateTime sentAt,  bool isInternalNote)?  $default,) {final _that = this;
switch (_that) {
case _TicketMessage() when $default != null:
return $default(_that.id,_that.ticketId,_that.senderId,_that.receiverId,_that.message,_that.sentAt,_that.isInternalNote);case _:
  return null;

}
}

}

/// @nodoc


class _TicketMessage implements TicketMessage {
  const _TicketMessage({required this.id, required this.ticketId, required this.senderId, required this.receiverId, required this.message, required this.sentAt, required this.isInternalNote});
  

@override final  String id;
@override final  String ticketId;
@override final  String senderId;
@override final  String receiverId;
@override final  String message;
@override final  DateTime sentAt;
@override final  bool isInternalNote;

/// Create a copy of TicketMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketMessageCopyWith<_TicketMessage> get copyWith => __$TicketMessageCopyWithImpl<_TicketMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.message, message) || other.message == message)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isInternalNote, isInternalNote) || other.isInternalNote == isInternalNote));
}


@override
int get hashCode => Object.hash(runtimeType,id,ticketId,senderId,receiverId,message,sentAt,isInternalNote);

@override
String toString() {
  return 'TicketMessage(id: $id, ticketId: $ticketId, senderId: $senderId, receiverId: $receiverId, message: $message, sentAt: $sentAt, isInternalNote: $isInternalNote)';
}


}

/// @nodoc
abstract mixin class _$TicketMessageCopyWith<$Res> implements $TicketMessageCopyWith<$Res> {
  factory _$TicketMessageCopyWith(_TicketMessage value, $Res Function(_TicketMessage) _then) = __$TicketMessageCopyWithImpl;
@override @useResult
$Res call({
 String id, String ticketId, String senderId, String receiverId, String message, DateTime sentAt, bool isInternalNote
});




}
/// @nodoc
class __$TicketMessageCopyWithImpl<$Res>
    implements _$TicketMessageCopyWith<$Res> {
  __$TicketMessageCopyWithImpl(this._self, this._then);

  final _TicketMessage _self;
  final $Res Function(_TicketMessage) _then;

/// Create a copy of TicketMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ticketId = null,Object? senderId = null,Object? receiverId = null,Object? message = null,Object? sentAt = null,Object? isInternalNote = null,}) {
  return _then(_TicketMessage(
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
