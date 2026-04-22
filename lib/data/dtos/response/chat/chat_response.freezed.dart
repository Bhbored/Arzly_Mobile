// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'ListingId') String get listingId;@JsonKey(name: 'ChatRole') ChatRole get chatRole;@JsonKey(name: 'IsArchived') bool get isArchived;@JsonKey(name: 'IsDeleted') bool get isDeleted;@JsonKey(name: 'IsDiscontinued') bool get isDiscontinued;@JsonKey(name: 'LastActivity') DateTime get lastActivity;@JsonKey(name: 'InitiatorId') String get initiatorId;@JsonKey(name: 'ReceiverId') String get receiverId;
/// Create a copy of ChatResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatResponseCopyWith<ChatResponse> get copyWith => _$ChatResponseCopyWithImpl<ChatResponse>(this as ChatResponse, _$identity);

  /// Serializes this ChatResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.chatRole, chatRole) || other.chatRole == chatRole)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.isDiscontinued, isDiscontinued) || other.isDiscontinued == isDiscontinued)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.initiatorId, initiatorId) || other.initiatorId == initiatorId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,chatRole,isArchived,isDeleted,isDiscontinued,lastActivity,initiatorId,receiverId);

@override
String toString() {
  return 'ChatResponse(id: $id, listingId: $listingId, chatRole: $chatRole, isArchived: $isArchived, isDeleted: $isDeleted, isDiscontinued: $isDiscontinued, lastActivity: $lastActivity, initiatorId: $initiatorId, receiverId: $receiverId)';
}


}

/// @nodoc
abstract mixin class $ChatResponseCopyWith<$Res>  {
  factory $ChatResponseCopyWith(ChatResponse value, $Res Function(ChatResponse) _then) = _$ChatResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'ListingId') String listingId,@JsonKey(name: 'ChatRole') ChatRole chatRole,@JsonKey(name: 'IsArchived') bool isArchived,@JsonKey(name: 'IsDeleted') bool isDeleted,@JsonKey(name: 'IsDiscontinued') bool isDiscontinued,@JsonKey(name: 'LastActivity') DateTime lastActivity,@JsonKey(name: 'InitiatorId') String initiatorId,@JsonKey(name: 'ReceiverId') String receiverId
});




}
/// @nodoc
class _$ChatResponseCopyWithImpl<$Res>
    implements $ChatResponseCopyWith<$Res> {
  _$ChatResponseCopyWithImpl(this._self, this._then);

  final ChatResponse _self;
  final $Res Function(ChatResponse) _then;

/// Create a copy of ChatResponse
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


/// Adds pattern-matching-related methods to [ChatResponse].
extension ChatResponsePatterns on ChatResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatResponse value)  $default,){
final _that = this;
switch (_that) {
case _ChatResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ChatResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'ListingId')  String listingId, @JsonKey(name: 'ChatRole')  ChatRole chatRole, @JsonKey(name: 'IsArchived')  bool isArchived, @JsonKey(name: 'IsDeleted')  bool isDeleted, @JsonKey(name: 'IsDiscontinued')  bool isDiscontinued, @JsonKey(name: 'LastActivity')  DateTime lastActivity, @JsonKey(name: 'InitiatorId')  String initiatorId, @JsonKey(name: 'ReceiverId')  String receiverId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatResponse() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'ListingId')  String listingId, @JsonKey(name: 'ChatRole')  ChatRole chatRole, @JsonKey(name: 'IsArchived')  bool isArchived, @JsonKey(name: 'IsDeleted')  bool isDeleted, @JsonKey(name: 'IsDiscontinued')  bool isDiscontinued, @JsonKey(name: 'LastActivity')  DateTime lastActivity, @JsonKey(name: 'InitiatorId')  String initiatorId, @JsonKey(name: 'ReceiverId')  String receiverId)  $default,) {final _that = this;
switch (_that) {
case _ChatResponse():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'ListingId')  String listingId, @JsonKey(name: 'ChatRole')  ChatRole chatRole, @JsonKey(name: 'IsArchived')  bool isArchived, @JsonKey(name: 'IsDeleted')  bool isDeleted, @JsonKey(name: 'IsDiscontinued')  bool isDiscontinued, @JsonKey(name: 'LastActivity')  DateTime lastActivity, @JsonKey(name: 'InitiatorId')  String initiatorId, @JsonKey(name: 'ReceiverId')  String receiverId)?  $default,) {final _that = this;
switch (_that) {
case _ChatResponse() when $default != null:
return $default(_that.id,_that.listingId,_that.chatRole,_that.isArchived,_that.isDeleted,_that.isDiscontinued,_that.lastActivity,_that.initiatorId,_that.receiverId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatResponse implements ChatResponse {
  const _ChatResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'ListingId') required this.listingId, @JsonKey(name: 'ChatRole') required this.chatRole, @JsonKey(name: 'IsArchived') required this.isArchived, @JsonKey(name: 'IsDeleted') required this.isDeleted, @JsonKey(name: 'IsDiscontinued') required this.isDiscontinued, @JsonKey(name: 'LastActivity') required this.lastActivity, @JsonKey(name: 'InitiatorId') required this.initiatorId, @JsonKey(name: 'ReceiverId') required this.receiverId});
  factory _ChatResponse.fromJson(Map<String, dynamic> json) => _$ChatResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'ListingId') final  String listingId;
@override@JsonKey(name: 'ChatRole') final  ChatRole chatRole;
@override@JsonKey(name: 'IsArchived') final  bool isArchived;
@override@JsonKey(name: 'IsDeleted') final  bool isDeleted;
@override@JsonKey(name: 'IsDiscontinued') final  bool isDiscontinued;
@override@JsonKey(name: 'LastActivity') final  DateTime lastActivity;
@override@JsonKey(name: 'InitiatorId') final  String initiatorId;
@override@JsonKey(name: 'ReceiverId') final  String receiverId;

/// Create a copy of ChatResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatResponseCopyWith<_ChatResponse> get copyWith => __$ChatResponseCopyWithImpl<_ChatResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.chatRole, chatRole) || other.chatRole == chatRole)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.isDiscontinued, isDiscontinued) || other.isDiscontinued == isDiscontinued)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity)&&(identical(other.initiatorId, initiatorId) || other.initiatorId == initiatorId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,chatRole,isArchived,isDeleted,isDiscontinued,lastActivity,initiatorId,receiverId);

@override
String toString() {
  return 'ChatResponse(id: $id, listingId: $listingId, chatRole: $chatRole, isArchived: $isArchived, isDeleted: $isDeleted, isDiscontinued: $isDiscontinued, lastActivity: $lastActivity, initiatorId: $initiatorId, receiverId: $receiverId)';
}


}

/// @nodoc
abstract mixin class _$ChatResponseCopyWith<$Res> implements $ChatResponseCopyWith<$Res> {
  factory _$ChatResponseCopyWith(_ChatResponse value, $Res Function(_ChatResponse) _then) = __$ChatResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'ListingId') String listingId,@JsonKey(name: 'ChatRole') ChatRole chatRole,@JsonKey(name: 'IsArchived') bool isArchived,@JsonKey(name: 'IsDeleted') bool isDeleted,@JsonKey(name: 'IsDiscontinued') bool isDiscontinued,@JsonKey(name: 'LastActivity') DateTime lastActivity,@JsonKey(name: 'InitiatorId') String initiatorId,@JsonKey(name: 'ReceiverId') String receiverId
});




}
/// @nodoc
class __$ChatResponseCopyWithImpl<$Res>
    implements _$ChatResponseCopyWith<$Res> {
  __$ChatResponseCopyWithImpl(this._self, this._then);

  final _ChatResponse _self;
  final $Res Function(_ChatResponse) _then;

/// Create a copy of ChatResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? chatRole = null,Object? isArchived = null,Object? isDeleted = null,Object? isDiscontinued = null,Object? lastActivity = null,Object? initiatorId = null,Object? receiverId = null,}) {
  return _then(_ChatResponse(
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
