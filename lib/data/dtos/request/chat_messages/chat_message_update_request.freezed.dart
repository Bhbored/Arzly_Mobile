// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatMessageUpdateRequest {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Text') String get text;@JsonKey(name: 'ReadAt') DateTime? get readAt;
/// Create a copy of ChatMessageUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageUpdateRequestCopyWith<ChatMessageUpdateRequest> get copyWith => _$ChatMessageUpdateRequestCopyWithImpl<ChatMessageUpdateRequest>(this as ChatMessageUpdateRequest, _$identity);

  /// Serializes this ChatMessageUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,readAt);

@override
String toString() {
  return 'ChatMessageUpdateRequest(id: $id, text: $text, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class $ChatMessageUpdateRequestCopyWith<$Res>  {
  factory $ChatMessageUpdateRequestCopyWith(ChatMessageUpdateRequest value, $Res Function(ChatMessageUpdateRequest) _then) = _$ChatMessageUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Text') String text,@JsonKey(name: 'ReadAt') DateTime? readAt
});




}
/// @nodoc
class _$ChatMessageUpdateRequestCopyWithImpl<$Res>
    implements $ChatMessageUpdateRequestCopyWith<$Res> {
  _$ChatMessageUpdateRequestCopyWithImpl(this._self, this._then);

  final ChatMessageUpdateRequest _self;
  final $Res Function(ChatMessageUpdateRequest) _then;

/// Create a copy of ChatMessageUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? text = null,Object? readAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessageUpdateRequest].
extension ChatMessageUpdateRequestPatterns on ChatMessageUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Text')  String text, @JsonKey(name: 'ReadAt')  DateTime? readAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageUpdateRequest() when $default != null:
return $default(_that.id,_that.text,_that.readAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Text')  String text, @JsonKey(name: 'ReadAt')  DateTime? readAt)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageUpdateRequest():
return $default(_that.id,_that.text,_that.readAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Text')  String text, @JsonKey(name: 'ReadAt')  DateTime? readAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageUpdateRequest() when $default != null:
return $default(_that.id,_that.text,_that.readAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageUpdateRequest implements ChatMessageUpdateRequest {
  const _ChatMessageUpdateRequest({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Text') required this.text, @JsonKey(name: 'ReadAt') this.readAt});
  factory _ChatMessageUpdateRequest.fromJson(Map<String, dynamic> json) => _$ChatMessageUpdateRequestFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Text') final  String text;
@override@JsonKey(name: 'ReadAt') final  DateTime? readAt;

/// Create a copy of ChatMessageUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageUpdateRequestCopyWith<_ChatMessageUpdateRequest> get copyWith => __$ChatMessageUpdateRequestCopyWithImpl<_ChatMessageUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.text, text) || other.text == text)&&(identical(other.readAt, readAt) || other.readAt == readAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,text,readAt);

@override
String toString() {
  return 'ChatMessageUpdateRequest(id: $id, text: $text, readAt: $readAt)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageUpdateRequestCopyWith<$Res> implements $ChatMessageUpdateRequestCopyWith<$Res> {
  factory _$ChatMessageUpdateRequestCopyWith(_ChatMessageUpdateRequest value, $Res Function(_ChatMessageUpdateRequest) _then) = __$ChatMessageUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Text') String text,@JsonKey(name: 'ReadAt') DateTime? readAt
});




}
/// @nodoc
class __$ChatMessageUpdateRequestCopyWithImpl<$Res>
    implements _$ChatMessageUpdateRequestCopyWith<$Res> {
  __$ChatMessageUpdateRequestCopyWithImpl(this._self, this._then);

  final _ChatMessageUpdateRequest _self;
  final $Res Function(_ChatMessageUpdateRequest) _then;

/// Create a copy of ChatMessageUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? text = null,Object? readAt = freezed,}) {
  return _then(_ChatMessageUpdateRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
