// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatAddRequest {

@JsonKey(name: 'ContextRole') ChatRole get contextRole;@JsonKey(name: 'InitiatorId') String get initiatorId;@JsonKey(name: 'ReceiverId') String get receiverId;@JsonKey(name: 'ListingId') String get listingId;
/// Create a copy of ChatAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatAddRequestCopyWith<ChatAddRequest> get copyWith => _$ChatAddRequestCopyWithImpl<ChatAddRequest>(this as ChatAddRequest, _$identity);

  /// Serializes this ChatAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatAddRequest&&(identical(other.contextRole, contextRole) || other.contextRole == contextRole)&&(identical(other.initiatorId, initiatorId) || other.initiatorId == initiatorId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contextRole,initiatorId,receiverId,listingId);

@override
String toString() {
  return 'ChatAddRequest(contextRole: $contextRole, initiatorId: $initiatorId, receiverId: $receiverId, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class $ChatAddRequestCopyWith<$Res>  {
  factory $ChatAddRequestCopyWith(ChatAddRequest value, $Res Function(ChatAddRequest) _then) = _$ChatAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ContextRole') ChatRole contextRole,@JsonKey(name: 'InitiatorId') String initiatorId,@JsonKey(name: 'ReceiverId') String receiverId,@JsonKey(name: 'ListingId') String listingId
});




}
/// @nodoc
class _$ChatAddRequestCopyWithImpl<$Res>
    implements $ChatAddRequestCopyWith<$Res> {
  _$ChatAddRequestCopyWithImpl(this._self, this._then);

  final ChatAddRequest _self;
  final $Res Function(ChatAddRequest) _then;

/// Create a copy of ChatAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contextRole = null,Object? initiatorId = null,Object? receiverId = null,Object? listingId = null,}) {
  return _then(_self.copyWith(
contextRole: null == contextRole ? _self.contextRole : contextRole // ignore: cast_nullable_to_non_nullable
as ChatRole,initiatorId: null == initiatorId ? _self.initiatorId : initiatorId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatAddRequest].
extension ChatAddRequestPatterns on ChatAddRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatAddRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChatAddRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChatAddRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ContextRole')  ChatRole contextRole, @JsonKey(name: 'InitiatorId')  String initiatorId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'ListingId')  String listingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatAddRequest() when $default != null:
return $default(_that.contextRole,_that.initiatorId,_that.receiverId,_that.listingId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ContextRole')  ChatRole contextRole, @JsonKey(name: 'InitiatorId')  String initiatorId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'ListingId')  String listingId)  $default,) {final _that = this;
switch (_that) {
case _ChatAddRequest():
return $default(_that.contextRole,_that.initiatorId,_that.receiverId,_that.listingId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ContextRole')  ChatRole contextRole, @JsonKey(name: 'InitiatorId')  String initiatorId, @JsonKey(name: 'ReceiverId')  String receiverId, @JsonKey(name: 'ListingId')  String listingId)?  $default,) {final _that = this;
switch (_that) {
case _ChatAddRequest() when $default != null:
return $default(_that.contextRole,_that.initiatorId,_that.receiverId,_that.listingId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatAddRequest implements ChatAddRequest {
  const _ChatAddRequest({@JsonKey(name: 'ContextRole') required this.contextRole, @JsonKey(name: 'InitiatorId') required this.initiatorId, @JsonKey(name: 'ReceiverId') required this.receiverId, @JsonKey(name: 'ListingId') required this.listingId});
  factory _ChatAddRequest.fromJson(Map<String, dynamic> json) => _$ChatAddRequestFromJson(json);

@override@JsonKey(name: 'ContextRole') final  ChatRole contextRole;
@override@JsonKey(name: 'InitiatorId') final  String initiatorId;
@override@JsonKey(name: 'ReceiverId') final  String receiverId;
@override@JsonKey(name: 'ListingId') final  String listingId;

/// Create a copy of ChatAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatAddRequestCopyWith<_ChatAddRequest> get copyWith => __$ChatAddRequestCopyWithImpl<_ChatAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatAddRequest&&(identical(other.contextRole, contextRole) || other.contextRole == contextRole)&&(identical(other.initiatorId, initiatorId) || other.initiatorId == initiatorId)&&(identical(other.receiverId, receiverId) || other.receiverId == receiverId)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contextRole,initiatorId,receiverId,listingId);

@override
String toString() {
  return 'ChatAddRequest(contextRole: $contextRole, initiatorId: $initiatorId, receiverId: $receiverId, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class _$ChatAddRequestCopyWith<$Res> implements $ChatAddRequestCopyWith<$Res> {
  factory _$ChatAddRequestCopyWith(_ChatAddRequest value, $Res Function(_ChatAddRequest) _then) = __$ChatAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ContextRole') ChatRole contextRole,@JsonKey(name: 'InitiatorId') String initiatorId,@JsonKey(name: 'ReceiverId') String receiverId,@JsonKey(name: 'ListingId') String listingId
});




}
/// @nodoc
class __$ChatAddRequestCopyWithImpl<$Res>
    implements _$ChatAddRequestCopyWith<$Res> {
  __$ChatAddRequestCopyWithImpl(this._self, this._then);

  final _ChatAddRequest _self;
  final $Res Function(_ChatAddRequest) _then;

/// Create a copy of ChatAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contextRole = null,Object? initiatorId = null,Object? receiverId = null,Object? listingId = null,}) {
  return _then(_ChatAddRequest(
contextRole: null == contextRole ? _self.contextRole : contextRole // ignore: cast_nullable_to_non_nullable
as ChatRole,initiatorId: null == initiatorId ? _self.initiatorId : initiatorId // ignore: cast_nullable_to_non_nullable
as String,receiverId: null == receiverId ? _self.receiverId : receiverId // ignore: cast_nullable_to_non_nullable
as String,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
