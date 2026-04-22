// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMessageAddRequest {

@JsonKey(name: 'ChatId') String get chatId;@JsonKey(name: 'SenderId') String get senderId;@JsonKey(name: 'ReceiverId') String get receiverId;@JsonKey(name: 'Text') String get text;
/// Create a copy of ChatMessageAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageAddRequestCopyWith<ChatMessageAddRequest> get copyWith => _$ChatMessageAddRequestCopyWithImpl<ChatMessageAddRequest>(this as ChatMessageAddRequest, _$identity);

  /// Serializes this ChatMessageAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageAddRequest&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,senderId,receiverId,text);

@override
String toString() {
  return 'ChatMessageAddRequest(chatId: $chatId, senderId: $senderId, receiverId: $receiverId, text: $text)';
}


}

/// @nodoc
abstract mixin class $ChatMessageAddRequestCopyWith<$Res>  {
  factory $ChatMessageAddRequestCopyWith(ChatMessageAddRequest value, $Res Function(ChatMessageAddRequest) _then) = _$ChatMessageAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ChatId') String chatId,@JsonKey(name: 'SenderId') String senderId,@JsonKey(name: 'ReceiverId') String receiverId,@JsonKey(name: 'Text') String text
});




}
/// @nodoc
class _$ChatMessageAddRequestCopyWithImpl<$Res>
    implements $ChatMessageAddRequestCopyWith<$Res> {
  _$ChatMessageAddRequestCopyWithImpl(this._self, this._then);

  final ChatMessageAddRequest _self;
  final $Res Function(ChatMessageAddRequest) _then;

/// Create a copy of ChatMessageAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatId = null,Object? senderId = null,Object? receiverId = null,Object? text = null,}) {
  return _then(_self.copyWith(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessageAddRequest].
extension ChatMessageAddRequestPatterns on ChatMessageAddRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageAddRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageAddRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageAddRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ChatId')  String chatId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Text')  String text)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageAddRequest() when $default != null:
return $default(_that.chatId,_that.senderId,_that.receiverId,_that.text);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ChatId')  String chatId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Text')  String text)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageAddRequest():
return $default(_that.chatId,_that.senderId,_that.receiverId,_that.text);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ChatId')  String chatId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Text')  String text)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageAddRequest() when $default != null:
return $default(_that.chatId,_that.senderId,_that.receiverId,_that.text);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageAddRequest implements ChatMessageAddRequest {
  const _ChatMessageAddRequest({@JsonKey(name: 'ChatId') required this.chatId, @JsonKey(name: 'SenderId') required this.senderId, @JsonKey(name: 'ReceiverId') required this.receiverId, @JsonKey(name: 'Text') required this.text});
  factory _ChatMessageAddRequest.fromJson(Map<String, dynamic> json) => _$ChatMessageAddRequestFromJson(json);

@override@JsonKey(name: 'ChatId') final  String chatId;
@override@JsonKey(name: 'SenderId') final  String senderId;
@override@JsonKey(name: 'ReceiverId') final  String receiverId;
@override@JsonKey(name: 'Text') final  String text;

/// Create a copy of ChatMessageAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageAddRequestCopyWith<_ChatMessageAddRequest> get copyWith => __$ChatMessageAddRequestCopyWithImpl<_ChatMessageAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageAddRequest&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.text, text) || other.text == text));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatId,senderId,receiverId,text);

@override
String toString() {
  return 'ChatMessageAddRequest(chatId: $chatId, senderId: $senderId, receiverId: $receiverId, text: $text)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageAddRequestCopyWith<$Res> implements $ChatMessageAddRequestCopyWith<$Res> {
  factory _$ChatMessageAddRequestCopyWith(_ChatMessageAddRequest value, $Res Function(_ChatMessageAddRequest) _then) = __$ChatMessageAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ChatId') String chatId,@JsonKey(name: 'SenderId') String senderId,@JsonKey(name: 'ReceiverId') String receiverId,@JsonKey(name: 'Text') String text
});




}
/// @nodoc
class __$ChatMessageAddRequestCopyWithImpl<$Res>
    implements _$ChatMessageAddRequestCopyWith<$Res> {
  __$ChatMessageAddRequestCopyWithImpl(this._self, this._then);

  final _ChatMessageAddRequest _self;
  final $Res Function(_ChatMessageAddRequest) _then;

/// Create a copy of ChatMessageAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatId = null,Object? senderId = null,Object? receiverId = null,Object? text = null,}) {
  return _then(_ChatMessageAddRequest(
chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
