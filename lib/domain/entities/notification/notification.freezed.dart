// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Notification {

 String get id; String? get userId; String? get chatterId; String? get listingId; String get title; String get body; NotificationSource get source; bool get isBroadcast; bool get isRead; DateTime get createdAt; DateTime? get readAt; String? get deepLink; NotificationActionType get actionType; String? get metadata; DateTime? get expiresAt;
/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationCopyWith<Notification> get copyWith => _$NotificationCopyWithImpl<Notification>(this as Notification, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.chatterId, chatterId) || other.chatterId == chatterId)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.source, source) || other.source == source)&&(identical(other.isBroadcast, isBroadcast) || other.isBroadcast == isBroadcast)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,chatterId,listingId,title,body,source,isBroadcast,isRead,createdAt,readAt,deepLink,actionType,metadata,expiresAt);

@override
String toString() {
  return 'Notification(id: $id, userId: $userId, chatterId: $chatterId, listingId: $listingId, title: $title, body: $body, source: $source, isBroadcast: $isBroadcast, isRead: $isRead, createdAt: $createdAt, readAt: $readAt, deepLink: $deepLink, actionType: $actionType, metadata: $metadata, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $NotificationCopyWith<$Res>  {
  factory $NotificationCopyWith(Notification value, $Res Function(Notification) _then) = _$NotificationCopyWithImpl;
@useResult
$Res call({
 String id, String? userId, String? chatterId, String? listingId, String title, String body, NotificationSource source, bool isBroadcast, bool isRead, DateTime createdAt, DateTime? readAt, String? deepLink, NotificationActionType actionType, String? metadata, DateTime? expiresAt
});




}
/// @nodoc
class _$NotificationCopyWithImpl<$Res>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._self, this._then);

  final Notification _self;
  final $Res Function(Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = freezed,Object? chatterId = freezed,Object? listingId = freezed,Object? title = null,Object? body = null,Object? source = null,Object? isBroadcast = null,Object? isRead = null,Object? createdAt = null,Object? readAt = freezed,Object? deepLink = freezed,Object? actionType = null,Object? metadata = freezed,Object? expiresAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,chatterId: freezed == chatterId ? _self.chatterId : chatterId // ignore: cast_nullable_to_non_nullable
as String?,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as NotificationSource,isBroadcast: null == isBroadcast ? _self.isBroadcast : isBroadcast // ignore: cast_nullable_to_non_nullable
as bool,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deepLink: freezed == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String?,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as NotificationActionType,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Notification].
extension NotificationPatterns on Notification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Notification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Notification value)  $default,){
final _that = this;
switch (_that) {
case _Notification():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Notification value)?  $default,){
final _that = this;
switch (_that) {
case _Notification() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? userId,  String? chatterId,  String? listingId,  String title,  String body,  NotificationSource source,  bool isBroadcast,  bool isRead,  DateTime createdAt,  DateTime? readAt,  String? deepLink,  NotificationActionType actionType,  String? metadata,  DateTime? expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.userId,_that.chatterId,_that.listingId,_that.title,_that.body,_that.source,_that.isBroadcast,_that.isRead,_that.createdAt,_that.readAt,_that.deepLink,_that.actionType,_that.metadata,_that.expiresAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? userId,  String? chatterId,  String? listingId,  String title,  String body,  NotificationSource source,  bool isBroadcast,  bool isRead,  DateTime createdAt,  DateTime? readAt,  String? deepLink,  NotificationActionType actionType,  String? metadata,  DateTime? expiresAt)  $default,) {final _that = this;
switch (_that) {
case _Notification():
return $default(_that.id,_that.userId,_that.chatterId,_that.listingId,_that.title,_that.body,_that.source,_that.isBroadcast,_that.isRead,_that.createdAt,_that.readAt,_that.deepLink,_that.actionType,_that.metadata,_that.expiresAt);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? userId,  String? chatterId,  String? listingId,  String title,  String body,  NotificationSource source,  bool isBroadcast,  bool isRead,  DateTime createdAt,  DateTime? readAt,  String? deepLink,  NotificationActionType actionType,  String? metadata,  DateTime? expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _Notification() when $default != null:
return $default(_that.id,_that.userId,_that.chatterId,_that.listingId,_that.title,_that.body,_that.source,_that.isBroadcast,_that.isRead,_that.createdAt,_that.readAt,_that.deepLink,_that.actionType,_that.metadata,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc


class _Notification implements Notification {
  const _Notification({required this.id, this.userId, this.chatterId, this.listingId, required this.title, required this.body, required this.source, required this.isBroadcast, required this.isRead, required this.createdAt, this.readAt, this.deepLink, required this.actionType, this.metadata, this.expiresAt});
  

@override final  String id;
@override final  String? userId;
@override final  String? chatterId;
@override final  String? listingId;
@override final  String title;
@override final  String body;
@override final  NotificationSource source;
@override final  bool isBroadcast;
@override final  bool isRead;
@override final  DateTime createdAt;
@override final  DateTime? readAt;
@override final  String? deepLink;
@override final  NotificationActionType actionType;
@override final  String? metadata;
@override final  DateTime? expiresAt;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationCopyWith<_Notification> get copyWith => __$NotificationCopyWithImpl<_Notification>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Notification&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.chatterId, chatterId) || other.chatterId == chatterId)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.source, source) || other.source == source)&&(identical(other.isBroadcast, isBroadcast) || other.isBroadcast == isBroadcast)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,chatterId,listingId,title,body,source,isBroadcast,isRead,createdAt,readAt,deepLink,actionType,metadata,expiresAt);

@override
String toString() {
  return 'Notification(id: $id, userId: $userId, chatterId: $chatterId, listingId: $listingId, title: $title, body: $body, source: $source, isBroadcast: $isBroadcast, isRead: $isRead, createdAt: $createdAt, readAt: $readAt, deepLink: $deepLink, actionType: $actionType, metadata: $metadata, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationCopyWith<$Res> implements $NotificationCopyWith<$Res> {
  factory _$NotificationCopyWith(_Notification value, $Res Function(_Notification) _then) = __$NotificationCopyWithImpl;
@override @useResult
$Res call({
 String id, String? userId, String? chatterId, String? listingId, String title, String body, NotificationSource source, bool isBroadcast, bool isRead, DateTime createdAt, DateTime? readAt, String? deepLink, NotificationActionType actionType, String? metadata, DateTime? expiresAt
});




}
/// @nodoc
class __$NotificationCopyWithImpl<$Res>
    implements _$NotificationCopyWith<$Res> {
  __$NotificationCopyWithImpl(this._self, this._then);

  final _Notification _self;
  final $Res Function(_Notification) _then;

/// Create a copy of Notification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? chatterId = freezed,Object? listingId = freezed,Object? title = null,Object? body = null,Object? source = null,Object? isBroadcast = null,Object? isRead = null,Object? createdAt = null,Object? readAt = freezed,Object? deepLink = freezed,Object? actionType = null,Object? metadata = freezed,Object? expiresAt = freezed,}) {
  return _then(_Notification(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,chatterId: freezed == chatterId ? _self.chatterId : chatterId // ignore: cast_nullable_to_non_nullable
as String?,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as NotificationSource,isBroadcast: null == isBroadcast ? _self.isBroadcast : isBroadcast // ignore: cast_nullable_to_non_nullable
as bool,isRead: null == isRead ? _self.isRead : isRead // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,readAt: freezed == readAt ? _self.readAt : readAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deepLink: freezed == deepLink ? _self.deepLink : deepLink // ignore: cast_nullable_to_non_nullable
as String?,actionType: null == actionType ? _self.actionType : actionType // ignore: cast_nullable_to_non_nullable
as NotificationActionType,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
