// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_message_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketMessageAddRequest {

@JsonKey(name: 'TicketId') String get ticketId;@JsonKey(name: 'SenderId') String get senderId;@JsonKey(name: 'ReceiverId') String get receiverId;@JsonKey(name: 'Message') String get message;@JsonKey(name: 'IsInternalNote') bool get isInternalNote;
/// Create a copy of TicketMessageAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketMessageAddRequestCopyWith<TicketMessageAddRequest> get copyWith => _$TicketMessageAddRequestCopyWithImpl<TicketMessageAddRequest>(this as TicketMessageAddRequest, _$identity);

  /// Serializes this TicketMessageAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketMessageAddRequest&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.message, message) || other.message == message)&&(identical(other.isInternalNote, isInternalNote) || other.isInternalNote == isInternalNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,senderId,receiverId,message,isInternalNote);

@override
String toString() {
  return 'TicketMessageAddRequest(ticketId: $ticketId, senderId: $senderId, receiverId: $receiverId, message: $message, isInternalNote: $isInternalNote)';
}


}

/// @nodoc
abstract mixin class $TicketMessageAddRequestCopyWith<$Res>  {
  factory $TicketMessageAddRequestCopyWith(TicketMessageAddRequest value, $Res Function(TicketMessageAddRequest) _then) = _$TicketMessageAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'TicketId') String ticketId,@JsonKey(name: 'SenderId') String senderId,@JsonKey(name: 'ReceiverId') String receiverId,@JsonKey(name: 'Message') String message,@JsonKey(name: 'IsInternalNote') bool isInternalNote
});




}
/// @nodoc
class _$TicketMessageAddRequestCopyWithImpl<$Res>
    implements $TicketMessageAddRequestCopyWith<$Res> {
  _$TicketMessageAddRequestCopyWithImpl(this._self, this._then);

  final TicketMessageAddRequest _self;
  final $Res Function(TicketMessageAddRequest) _then;

/// Create a copy of TicketMessageAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = null,Object? senderId = null,Object? receiverId = null,Object? message = null,Object? isInternalNote = null,}) {
  return _then(_self.copyWith(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isInternalNote: null == isInternalNote ? _self.isInternalNote : isInternalNote // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketMessageAddRequest].
extension TicketMessageAddRequestPatterns on TicketMessageAddRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketMessageAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketMessageAddRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketMessageAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _TicketMessageAddRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketMessageAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TicketMessageAddRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Message')  String message, @JsonKey(name: 'IsInternalNote')  bool isInternalNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketMessageAddRequest() when $default != null:
return $default(_that.ticketId,_that.senderId,_that.receiverId,_that.message,_that.isInternalNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Message')  String message, @JsonKey(name: 'IsInternalNote')  bool isInternalNote)  $default,) {final _that = this;
switch (_that) {
case _TicketMessageAddRequest():
return $default(_that.ticketId,_that.senderId,_that.receiverId,_that.message,_that.isInternalNote);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'TicketId')  String ticketId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Message')  String message, @JsonKey(name: 'IsInternalNote')  bool isInternalNote)?  $default,) {final _that = this;
switch (_that) {
case _TicketMessageAddRequest() when $default != null:
return $default(_that.ticketId,_that.senderId,_that.receiverId,_that.message,_that.isInternalNote);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketMessageAddRequest implements TicketMessageAddRequest {
  const _TicketMessageAddRequest({@JsonKey(name: 'TicketId') required this.ticketId, @JsonKey(name: 'SenderId') required this.senderId, @JsonKey(name: 'ReceiverId') required this.receiverId, @JsonKey(name: 'Message') required this.message, @JsonKey(name: 'IsInternalNote') required this.isInternalNote});
  factory _TicketMessageAddRequest.fromJson(Map<String, dynamic> json) => _$TicketMessageAddRequestFromJson(json);

@override@JsonKey(name: 'TicketId') final  String ticketId;
@override@JsonKey(name: 'SenderId') final  String senderId;
@override@JsonKey(name: 'ReceiverId') final  String receiverId;
@override@JsonKey(name: 'Message') final  String message;
@override@JsonKey(name: 'IsInternalNote') final  bool isInternalNote;

/// Create a copy of TicketMessageAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketMessageAddRequestCopyWith<_TicketMessageAddRequest> get copyWith => __$TicketMessageAddRequestCopyWithImpl<_TicketMessageAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketMessageAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketMessageAddRequest&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.message, message) || other.message == message)&&(identical(other.isInternalNote, isInternalNote) || other.isInternalNote == isInternalNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticketId,senderId,receiverId,message,isInternalNote);

@override
String toString() {
  return 'TicketMessageAddRequest(ticketId: $ticketId, senderId: $senderId, receiverId: $receiverId, message: $message, isInternalNote: $isInternalNote)';
}


}

/// @nodoc
abstract mixin class _$TicketMessageAddRequestCopyWith<$Res> implements $TicketMessageAddRequestCopyWith<$Res> {
  factory _$TicketMessageAddRequestCopyWith(_TicketMessageAddRequest value, $Res Function(_TicketMessageAddRequest) _then) = __$TicketMessageAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'TicketId') String ticketId,@JsonKey(name: 'SenderId') String senderId,@JsonKey(name: 'ReceiverId') String receiverId,@JsonKey(name: 'Message') String message,@JsonKey(name: 'IsInternalNote') bool isInternalNote
});




}
/// @nodoc
class __$TicketMessageAddRequestCopyWithImpl<$Res>
    implements _$TicketMessageAddRequestCopyWith<$Res> {
  __$TicketMessageAddRequestCopyWithImpl(this._self, this._then);

  final _TicketMessageAddRequest _self;
  final $Res Function(_TicketMessageAddRequest) _then;

/// Create a copy of TicketMessageAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = null,Object? senderId = null,Object? receiverId = null,Object? message = null,Object? isInternalNote = null,}) {
  return _then(_TicketMessageAddRequest(
ticketId: null == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isInternalNote: null == isInternalNote ? _self.isInternalNote : isInternalNote // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
