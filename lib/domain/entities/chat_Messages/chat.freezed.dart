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

 String get id; String? get listingId; ChatRole get contextRole; bool get isArchived; DateTime get lastActivity; int get unreadCount; String get lastMessagePreview;
/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCopyWith<Chat> get copyWith => _$ChatCopyWithImpl<Chat>(this as Chat, _$identity);

  /// Serializes this Chat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chat&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.contextRole, contextRole) || other.contextRole == contextRole)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,contextRole,isArchived,lastActivity,unreadCount,lastMessagePreview);

@override
String toString() {
  return 'Chat(id: $id, listingId: $listingId, contextRole: $contextRole, isArchived: $isArchived, lastActivity: $lastActivity, unreadCount: $unreadCount, lastMessagePreview: $lastMessagePreview)';
}


}

/// @nodoc
abstract mixin class $ChatCopyWith<$Res>  {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) _then) = _$ChatCopyWithImpl;
@useResult
$Res call({
 String id, String? listingId, ChatRole contextRole, bool isArchived, DateTime lastActivity, int unreadCount, String lastMessagePreview
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = freezed,Object? contextRole = null,Object? isArchived = null,Object? lastActivity = null,Object? unreadCount = null,Object? lastMessagePreview = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,contextRole: null == contextRole ? _self.contextRole : contextRole // ignore: cast_nullable_to_non_nullable
as ChatRole,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,lastActivity: null == lastActivity ? _self.lastActivity : lastActivity // ignore: cast_nullable_to_non_nullable
as DateTime,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,lastMessagePreview: null == lastMessagePreview ? _self.lastMessagePreview : lastMessagePreview // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? listingId,  ChatRole contextRole,  bool isArchived,  DateTime lastActivity,  int unreadCount,  String lastMessagePreview)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Chat() when $default != null:
return $default(_that.id,_that.listingId,_that.contextRole,_that.isArchived,_that.lastActivity,_that.unreadCount,_that.lastMessagePreview);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? listingId,  ChatRole contextRole,  bool isArchived,  DateTime lastActivity,  int unreadCount,  String lastMessagePreview)  $default,) {final _that = this;
switch (_that) {
case _Chat():
return $default(_that.id,_that.listingId,_that.contextRole,_that.isArchived,_that.lastActivity,_that.unreadCount,_that.lastMessagePreview);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? listingId,  ChatRole contextRole,  bool isArchived,  DateTime lastActivity,  int unreadCount,  String lastMessagePreview)?  $default,) {final _that = this;
switch (_that) {
case _Chat() when $default != null:
return $default(_that.id,_that.listingId,_that.contextRole,_that.isArchived,_that.lastActivity,_that.unreadCount,_that.lastMessagePreview);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Chat implements Chat {
  const _Chat({required this.id, this.listingId, required this.contextRole, required this.isArchived, required this.lastActivity, required this.unreadCount, this.lastMessagePreview = ''});
  factory _Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

@override final  String id;
@override final  String? listingId;
@override final  ChatRole contextRole;
@override final  bool isArchived;
@override final  DateTime lastActivity;
@override final  int unreadCount;
@override@JsonKey() final  String lastMessagePreview;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCopyWith<_Chat> get copyWith => __$ChatCopyWithImpl<_Chat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Chat&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.contextRole, contextRole) || other.contextRole == contextRole)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,contextRole,isArchived,lastActivity,unreadCount,lastMessagePreview);

@override
String toString() {
  return 'Chat(id: $id, listingId: $listingId, contextRole: $contextRole, isArchived: $isArchived, lastActivity: $lastActivity, unreadCount: $unreadCount, lastMessagePreview: $lastMessagePreview)';
}


}

/// @nodoc
abstract mixin class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) _then) = __$ChatCopyWithImpl;
@override @useResult
$Res call({
 String id, String? listingId, ChatRole contextRole, bool isArchived, DateTime lastActivity, int unreadCount, String lastMessagePreview
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = freezed,Object? contextRole = null,Object? isArchived = null,Object? lastActivity = null,Object? unreadCount = null,Object? lastMessagePreview = null,}) {
  return _then(_Chat(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,contextRole: null == contextRole ? _self.contextRole : contextRole // ignore: cast_nullable_to_non_nullable
as ChatRole,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,lastActivity: null == lastActivity ? _self.lastActivity : lastActivity // ignore: cast_nullable_to_non_nullable
as DateTime,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,lastMessagePreview: null == lastMessagePreview ? _self.lastMessagePreview : lastMessagePreview // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
