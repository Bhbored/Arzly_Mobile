// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NotificationResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'UserId') String? get userId;@JsonKey(name: 'ChatterId') String? get chatterId;@JsonKey(name: 'ListingId') String? get listingId;@JsonKey(name: 'Title') String get title;@JsonKey(name: 'Body') String get body;@JsonKey(name: 'Source') NotificationSource get source;@JsonKey(name: 'IsBroadcast') bool get isBroadcast;@JsonKey(name: 'IsRead') bool get isRead;@JsonKey(name: 'CreatedAt') DateTime get createdAt;@JsonKey(name: 'ReadAt') DateTime? get readAt;@JsonKey(name: 'DeepLink') String? get deepLink;@JsonKey(name: 'ActionType') NotificationActionType get actionType;@JsonKey(name: 'Metadata') String? get metadata;@JsonKey(name: 'ExpiresAt') DateTime? get expiresAt;
/// Create a copy of NotificationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationResponseCopyWith<NotificationResponse> get copyWith => _$NotificationResponseCopyWithImpl<NotificationResponse>(this as NotificationResponse, _$identity);

  /// Serializes this NotificationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.chatterId, chatterId) || other.chatterId == chatterId)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.source, source) || other.source == source)&&(identical(other.isBroadcast, isBroadcast) || other.isBroadcast == isBroadcast)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,chatterId,listingId,title,body,source,isBroadcast,isRead,createdAt,readAt,deepLink,actionType,metadata,expiresAt);

@override
String toString() {
  return 'NotificationResponse(id: $id, userId: $userId, chatterId: $chatterId, listingId: $listingId, title: $title, body: $body, source: $source, isBroadcast: $isBroadcast, isRead: $isRead, createdAt: $createdAt, readAt: $readAt, deepLink: $deepLink, actionType: $actionType, metadata: $metadata, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class $NotificationResponseCopyWith<$Res>  {
  factory $NotificationResponseCopyWith(NotificationResponse value, $Res Function(NotificationResponse) _then) = _$NotificationResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'UserId') String? userId,@JsonKey(name: 'ChatterId') String? chatterId,@JsonKey(name: 'ListingId') String? listingId,@JsonKey(name: 'Title') String title,@JsonKey(name: 'Body') String body,@JsonKey(name: 'Source') NotificationSource source,@JsonKey(name: 'IsBroadcast') bool isBroadcast,@JsonKey(name: 'IsRead') bool isRead,@JsonKey(name: 'CreatedAt') DateTime createdAt,@JsonKey(name: 'ReadAt') DateTime? readAt,@JsonKey(name: 'DeepLink') String? deepLink,@JsonKey(name: 'ActionType') NotificationActionType actionType,@JsonKey(name: 'Metadata') String? metadata,@JsonKey(name: 'ExpiresAt') DateTime? expiresAt
});




}
/// @nodoc
class _$NotificationResponseCopyWithImpl<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  _$NotificationResponseCopyWithImpl(this._self, this._then);

  final NotificationResponse _self;
  final $Res Function(NotificationResponse) _then;

/// Create a copy of NotificationResponse
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


/// Adds pattern-matching-related methods to [NotificationResponse].
extension NotificationResponsePatterns on NotificationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationResponse value)  $default,){
final _that = this;
switch (_that) {
case _NotificationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String? userId, @JsonKey(name: 'ChatterId')  String? chatterId, @JsonKey(name: 'ListingId')  String? listingId, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Body')  String body, @JsonKey(name: 'Source')  NotificationSource source, @JsonKey(name: 'IsBroadcast')  bool isBroadcast, @JsonKey(name: 'IsRead')  bool isRead, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'ReadAt')  DateTime? readAt, @JsonKey(name: 'DeepLink')  String? deepLink, @JsonKey(name: 'ActionType')  NotificationActionType actionType, @JsonKey(name: 'Metadata')  String? metadata, @JsonKey(name: 'ExpiresAt')  DateTime? expiresAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String? userId, @JsonKey(name: 'ChatterId')  String? chatterId, @JsonKey(name: 'ListingId')  String? listingId, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Body')  String body, @JsonKey(name: 'Source')  NotificationSource source, @JsonKey(name: 'IsBroadcast')  bool isBroadcast, @JsonKey(name: 'IsRead')  bool isRead, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'ReadAt')  DateTime? readAt, @JsonKey(name: 'DeepLink')  String? deepLink, @JsonKey(name: 'ActionType')  NotificationActionType actionType, @JsonKey(name: 'Metadata')  String? metadata, @JsonKey(name: 'ExpiresAt')  DateTime? expiresAt)  $default,) {final _that = this;
switch (_that) {
case _NotificationResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'UserId')  String? userId, @JsonKey(name: 'ChatterId')  String? chatterId, @JsonKey(name: 'ListingId')  String? listingId, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Body')  String body, @JsonKey(name: 'Source')  NotificationSource source, @JsonKey(name: 'IsBroadcast')  bool isBroadcast, @JsonKey(name: 'IsRead')  bool isRead, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'ReadAt')  DateTime? readAt, @JsonKey(name: 'DeepLink')  String? deepLink, @JsonKey(name: 'ActionType')  NotificationActionType actionType, @JsonKey(name: 'Metadata')  String? metadata, @JsonKey(name: 'ExpiresAt')  DateTime? expiresAt)?  $default,) {final _that = this;
switch (_that) {
case _NotificationResponse() when $default != null:
return $default(_that.id,_that.userId,_that.chatterId,_that.listingId,_that.title,_that.body,_that.source,_that.isBroadcast,_that.isRead,_that.createdAt,_that.readAt,_that.deepLink,_that.actionType,_that.metadata,_that.expiresAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationResponse implements NotificationResponse {
  const _NotificationResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'UserId') this.userId, @JsonKey(name: 'ChatterId') this.chatterId, @JsonKey(name: 'ListingId') this.listingId, @JsonKey(name: 'Title') required this.title, @JsonKey(name: 'Body') required this.body, @JsonKey(name: 'Source') required this.source, @JsonKey(name: 'IsBroadcast') required this.isBroadcast, @JsonKey(name: 'IsRead') required this.isRead, @JsonKey(name: 'CreatedAt') required this.createdAt, @JsonKey(name: 'ReadAt') this.readAt, @JsonKey(name: 'DeepLink') this.deepLink, @JsonKey(name: 'ActionType') required this.actionType, @JsonKey(name: 'Metadata') this.metadata, @JsonKey(name: 'ExpiresAt') this.expiresAt});
  factory _NotificationResponse.fromJson(Map<String, dynamic> json) => _$NotificationResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'UserId') final  String? userId;
@override@JsonKey(name: 'ChatterId') final  String? chatterId;
@override@JsonKey(name: 'ListingId') final  String? listingId;
@override@JsonKey(name: 'Title') final  String title;
@override@JsonKey(name: 'Body') final  String body;
@override@JsonKey(name: 'Source') final  NotificationSource source;
@override@JsonKey(name: 'IsBroadcast') final  bool isBroadcast;
@override@JsonKey(name: 'IsRead') final  bool isRead;
@override@JsonKey(name: 'CreatedAt') final  DateTime createdAt;
@override@JsonKey(name: 'ReadAt') final  DateTime? readAt;
@override@JsonKey(name: 'DeepLink') final  String? deepLink;
@override@JsonKey(name: 'ActionType') final  NotificationActionType actionType;
@override@JsonKey(name: 'Metadata') final  String? metadata;
@override@JsonKey(name: 'ExpiresAt') final  DateTime? expiresAt;

/// Create a copy of NotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationResponseCopyWith<_NotificationResponse> get copyWith => __$NotificationResponseCopyWithImpl<_NotificationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.chatterId, chatterId) || other.chatterId == chatterId)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body)&&(identical(other.source, source) || other.source == source)&&(identical(other.isBroadcast, isBroadcast) || other.isBroadcast == isBroadcast)&&(identical(other.isRead, isRead) || other.isRead == isRead)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.readAt, readAt) || other.readAt == readAt)&&(identical(other.deepLink, deepLink) || other.deepLink == deepLink)&&(identical(other.actionType, actionType) || other.actionType == actionType)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,chatterId,listingId,title,body,source,isBroadcast,isRead,createdAt,readAt,deepLink,actionType,metadata,expiresAt);

@override
String toString() {
  return 'NotificationResponse(id: $id, userId: $userId, chatterId: $chatterId, listingId: $listingId, title: $title, body: $body, source: $source, isBroadcast: $isBroadcast, isRead: $isRead, createdAt: $createdAt, readAt: $readAt, deepLink: $deepLink, actionType: $actionType, metadata: $metadata, expiresAt: $expiresAt)';
}


}

/// @nodoc
abstract mixin class _$NotificationResponseCopyWith<$Res> implements $NotificationResponseCopyWith<$Res> {
  factory _$NotificationResponseCopyWith(_NotificationResponse value, $Res Function(_NotificationResponse) _then) = __$NotificationResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'UserId') String? userId,@JsonKey(name: 'ChatterId') String? chatterId,@JsonKey(name: 'ListingId') String? listingId,@JsonKey(name: 'Title') String title,@JsonKey(name: 'Body') String body,@JsonKey(name: 'Source') NotificationSource source,@JsonKey(name: 'IsBroadcast') bool isBroadcast,@JsonKey(name: 'IsRead') bool isRead,@JsonKey(name: 'CreatedAt') DateTime createdAt,@JsonKey(name: 'ReadAt') DateTime? readAt,@JsonKey(name: 'DeepLink') String? deepLink,@JsonKey(name: 'ActionType') NotificationActionType actionType,@JsonKey(name: 'Metadata') String? metadata,@JsonKey(name: 'ExpiresAt') DateTime? expiresAt
});




}
/// @nodoc
class __$NotificationResponseCopyWithImpl<$Res>
    implements _$NotificationResponseCopyWith<$Res> {
  __$NotificationResponseCopyWithImpl(this._self, this._then);

  final _NotificationResponse _self;
  final $Res Function(_NotificationResponse) _then;

/// Create a copy of NotificationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = freezed,Object? chatterId = freezed,Object? listingId = freezed,Object? title = null,Object? body = null,Object? source = null,Object? isBroadcast = null,Object? isRead = null,Object? createdAt = null,Object? readAt = freezed,Object? deepLink = freezed,Object? actionType = null,Object? metadata = freezed,Object? expiresAt = freezed,}) {
  return _then(_NotificationResponse(
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
