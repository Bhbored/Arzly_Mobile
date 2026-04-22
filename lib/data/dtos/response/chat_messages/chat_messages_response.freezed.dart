// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_messages_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMessageResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'ChatId') String get chatId;@JsonKey(name: 'SenderId') String get senderId;@JsonKey(name: 'ReceiverId') String get receiverId;@JsonKey(name: 'Text') String get text;@JsonKey(name: 'SentAt') DateTime get sentAt;@JsonKey(name: 'IsRead') bool get isRead;@JsonKey(name: 'ReadAt') DateTime? get readAt;
/// Create a copy of ChatMessageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageResponseCopyWith<ChatMessageResponse> get copyWith => _$ChatMessageResponseCopyWithImpl<ChatMessageResponse>(this as ChatMessageResponse, _$identity);

  /// Serializes this ChatMessageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.text, text) || other.text == text)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,senderId,receiverId,text,sentAt,isRead,readAt);

@override
String toString() {
  return 'ChatMessageResponse(id: $id, chatId: $chatId, senderId: $senderId, receiverId: $receiverId, text: $text, sentAt: $sentAt, isRead: $isRead, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class $ChatMessageResponseCopyWith<$Res>  {
  factory $ChatMessageResponseCopyWith(ChatMessageResponse value, $Res Function(ChatMessageResponse) _then) = _$ChatMessageResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'ChatId') String chatId,@JsonKey(name: 'SenderId') String senderId,@JsonKey(name: 'ReceiverId') String receiverId,@JsonKey(name: 'Text') String text,@JsonKey(name: 'SentAt') DateTime sentAt,@JsonKey(name: 'IsRead') bool isRead,@JsonKey(name: 'ReadAt') DateTime? readAt
});




}
/// @nodoc
class _$ChatMessageResponseCopyWithImpl<$Res>
    implements $ChatMessageResponseCopyWith<$Res> {
  _$ChatMessageResponseCopyWithImpl(this._self, this._then);

  final ChatMessageResponse _self;
  final $Res Function(ChatMessageResponse) _then;

/// Create a copy of ChatMessageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chatId = null,Object? senderId = null,Object? receiverId = null,Object? text = null,Object? sentAt = null,Object? isRead = null,Object? readAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessageResponse].
extension ChatMessageResponsePatterns on ChatMessageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageResponse value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'ChatId')  String chatId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Text')  String text, @JsonKey(name: 'SentAt')  DateTime sentAt, @JsonKey(name: 'IsRead')  bool isRead, @JsonKey(name: 'ReadAt')  DateTime? readAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageResponse() when $default != null:
return $default(_that.id,_that.chatId,_that.senderId,_that.receiverId,_that.text,_that.sentAt,_that.isRead,_that.readAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'ChatId')  String chatId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Text')  String text, @JsonKey(name: 'SentAt')  DateTime sentAt, @JsonKey(name: 'IsRead')  bool isRead, @JsonKey(name: 'ReadAt')  DateTime? readAt)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageResponse():
return $default(_that.id,_that.chatId,_that.senderId,_that.receiverId,_that.text,_that.sentAt,_that.isRead,_that.readAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'ChatId')  String chatId, @JsonKey(name: 'SenderId')  String senderId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'Text')  String text, @JsonKey(name: 'SentAt')  DateTime sentAt, @JsonKey(name: 'IsRead')  bool isRead, @JsonKey(name: 'ReadAt')  DateTime? readAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageResponse() when $default != null:
return $default(_that.id,_that.chatId,_that.senderId,_that.receiverId,_that.text,_that.sentAt,_that.isRead,_that.readAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageResponse implements ChatMessageResponse {
  const _ChatMessageResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'ChatId') required this.chatId, @JsonKey(name: 'SenderId') required this.senderId, @JsonKey(name: 'ReceiverId') required this.receiverId, @JsonKey(name: 'Text') required this.text, @JsonKey(name: 'SentAt') required this.sentAt, @JsonKey(name: 'IsRead') required this.isRead, @JsonKey(name: 'ReadAt') this.readAt});
  factory _ChatMessageResponse.fromJson(Map<String, dynamic> json) => _$ChatMessageResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'ChatId') final  String chatId;
@override@JsonKey(name: 'SenderId') final  String senderId;
@override@JsonKey(name: 'ReceiverId') final  String receiverId;
@override@JsonKey(name: 'Text') final  String text;
@override@JsonKey(name: 'SentAt') final  DateTime sentAt;
@override@JsonKey(name: 'IsRead') final  bool isRead;
@override@JsonKey(name: 'ReadAt') final  DateTime? readAt;

/// Create a copy of ChatMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageResponseCopyWith<_ChatMessageResponse> get copyWith => __$ChatMessageResponseCopyWithImpl<_ChatMessageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.text, text) || other.text == text)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,senderId,receiverId,text,sentAt,isRead,readAt);

@override
String toString() {
  return 'ChatMessageResponse(id: $id, chatId: $chatId, senderId: $senderId, receiverId: $receiverId, text: $text, sentAt: $sentAt, isRead: $isRead, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageResponseCopyWith<$Res> implements $ChatMessageResponseCopyWith<$Res> {
  factory _$ChatMessageResponseCopyWith(_ChatMessageResponse value, $Res Function(_ChatMessageResponse) _then) = __$ChatMessageResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'ChatId') String chatId,@JsonKey(name: 'SenderId') String senderId,@JsonKey(name: 'ReceiverId') String receiverId,@JsonKey(name: 'Text') String text,@JsonKey(name: 'SentAt') DateTime sentAt,@JsonKey(name: 'IsRead') bool isRead,@JsonKey(name: 'ReadAt') DateTime? readAt
});




}
/// @nodoc
class __$ChatMessageResponseCopyWithImpl<$Res>
    implements _$ChatMessageResponseCopyWith<$Res> {
  __$ChatMessageResponseCopyWithImpl(this._self, this._then);

  final _ChatMessageResponse _self;
  final $Res Function(_ChatMessageResponse) _then;

/// Create a copy of ChatMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? senderId = null,Object? receiverId = null,Object? text = null,Object? sentAt = null,Object? isRead = null,Object? readAt = freezed,}) {
  return _then(_ChatMessageResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,sentAt: null == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
