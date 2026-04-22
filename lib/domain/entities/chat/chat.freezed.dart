// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Chat {

 String get id; String get listingId; ChatRole get chatRole; bool get isArchived; bool get isDeleted; bool get isDiscontinued; DateTime get lastActivity; String get initiatorId; String get receiverId;
/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCopyWith<Chat> get copyWith => _$ChatCopyWithImpl<Chat>(this as Chat, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chat&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.chatRole, chatRole) || other.chatRole == chatRole)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.isDiscontinued, isDiscontinued) || other.isDiscontinued == isDiscontinued)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.initiatorId, initiatorId) || other.initiatorId == initiatorId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,chatRole,isArchived,isDeleted,isDiscontinued,lastActivity,initiatorId,receiverId);

@override
String toString() {
  return 'Chat(id: $id, listingId: $listingId, chatRole: $chatRole, isArchived: $isArchived, isDeleted: $isDeleted, isDiscontinued: $isDiscontinued, lastActivity: $lastActivity, initiatorId: $initiatorId, receiverId: $receiverId)';
}


}

/// @nodoc
abstract mixin class $ChatCopyWith<$Res>  {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) _then) = _$ChatCopyWithImpl;
@useResult
$Res call({
 String id, String listingId, ChatRole chatRole, bool isArchived, bool isDeleted, bool isDiscontinued, DateTime lastActivity, String initiatorId, String receiverId
});




}
/// @nodoc
class _$ChatCopyWithImpl<$Res>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._self, this._then);

  final Chat _self;
  final $Res Function(Chat) _then;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? chatRole = null,Object? isArchived = null,Object? isDeleted = null,Object? isDiscontinued = null,Object? lastActivity = null,Object? initiatorId = null,Object? receiverId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,chatRole: null == chatRole ? _self.chatRole : chatRole // ignore: cast_nullable_to_non_nullable
as ChatRole,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,isDiscontinued: null == isDiscontinued ? _self.isDiscontinued : isDiscontinued // ignore: cast_nullable_to_non_nullable
as bool,lastActivity: null == lastActivity ? _self.lastActivity : lastActivity // ignore: cast_nullable_to_non_nullable
as DateTime,initiatorId: null == initiatorId ? _self.initiatorId : initiatorId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Chat].
extension ChatPatterns on Chat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Chat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Chat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Chat value)  $default,){
final _that = this;
switch (_that) {
case _Chat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Chat value)?  $default,){
final _that = this;
switch (_that) {
case _Chat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String listingId,  ChatRole chatRole,  bool isArchived,  bool isDeleted,  bool isDiscontinued,  DateTime lastActivity,  String initiatorId,  String receiverId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Chat() when $default != null:
return $default(_that.id,_that.listingId,_that.chatRole,_that.isArchived,_that.isDeleted,_that.isDiscontinued,_that.lastActivity,_that.initiatorId,_that.receiverId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String listingId,  ChatRole chatRole,  bool isArchived,  bool isDeleted,  bool isDiscontinued,  DateTime lastActivity,  String initiatorId,  String receiverId)  $default,) {final _that = this;
switch (_that) {
case _Chat():
return $default(_that.id,_that.listingId,_that.chatRole,_that.isArchived,_that.isDeleted,_that.isDiscontinued,_that.lastActivity,_that.initiatorId,_that.receiverId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String listingId,  ChatRole chatRole,  bool isArchived,  bool isDeleted,  bool isDiscontinued,  DateTime lastActivity,  String initiatorId,  String receiverId)?  $default,) {final _that = this;
switch (_that) {
case _Chat() when $default != null:
return $default(_that.id,_that.listingId,_that.chatRole,_that.isArchived,_that.isDeleted,_that.isDiscontinued,_that.lastActivity,_that.initiatorId,_that.receiverId);case _:
  return null;

}
}

}

/// @nodoc


class _Chat implements Chat {
  const _Chat({required this.id, required this.listingId, required this.chatRole, required this.isArchived, required this.isDeleted, required this.isDiscontinued, required this.lastActivity, required this.initiatorId, required this.receiverId});
  

@override final  String id;
@override final  String listingId;
@override final  ChatRole chatRole;
@override final  bool isArchived;
@override final  bool isDeleted;
@override final  bool isDiscontinued;
@override final  DateTime lastActivity;
@override final  String initiatorId;
@override final  String receiverId;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCopyWith<_Chat> get copyWith => __$ChatCopyWithImpl<_Chat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Chat&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.chatRole, chatRole) || other.chatRole == chatRole)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.isDiscontinued, isDiscontinued) || other.isDiscontinued == isDiscontinued)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.initiatorId, initiatorId) || other.initiatorId == initiatorId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,chatRole,isArchived,isDeleted,isDiscontinued,lastActivity,initiatorId,receiverId);

@override
String toString() {
  return 'Chat(id: $id, listingId: $listingId, chatRole: $chatRole, isArchived: $isArchived, isDeleted: $isDeleted, isDiscontinued: $isDiscontinued, lastActivity: $lastActivity, initiatorId: $initiatorId, receiverId: $receiverId)';
}


}

/// @nodoc
abstract mixin class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) _then) = __$ChatCopyWithImpl;
@override @useResult
$Res call({
 String id, String listingId, ChatRole chatRole, bool isArchived, bool isDeleted, bool isDiscontinued, DateTime lastActivity, String initiatorId, String receiverId
});




}
/// @nodoc
class __$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(this._self, this._then);

  final _Chat _self;
  final $Res Function(_Chat) _then;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? chatRole = null,Object? isArchived = null,Object? isDeleted = null,Object? isDiscontinued = null,Object? lastActivity = null,Object? initiatorId = null,Object? receiverId = null,}) {
  return _then(_Chat(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,chatRole: null == chatRole ? _self.chatRole : chatRole // ignore: cast_nullable_to_non_nullable
as ChatRole,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,isDiscontinued: null == isDiscontinued ? _self.isDiscontinued : isDiscontinued // ignore: cast_nullable_to_non_nullable
as bool,lastActivity: null == lastActivity ? _self.lastActivity : lastActivity // ignore: cast_nullable_to_non_nullable
as DateTime,initiatorId: null == initiatorId ? _self.initiatorId : initiatorId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
