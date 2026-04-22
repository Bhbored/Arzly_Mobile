// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Subject') String get subject;@JsonKey(name: 'Status') TicketStatus get status;@JsonKey(name: 'Priority') TicketPriority get priority;@JsonKey(name: 'CreatedAt') DateTime get createdAt;@JsonKey(name: 'LastUpdatedAt') DateTime? get lastUpdatedAt;@JsonKey(name: 'ClosedAt') DateTime? get closedAt;@JsonKey(name: 'UserId') String get userId;@JsonKey(name: 'AssignedToId') String? get assignedToId;@JsonKey(name: 'ListingId') String? get listingId;
/// Create a copy of TicketResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketResponseCopyWith<TicketResponse> get copyWith => _$TicketResponseCopyWithImpl<TicketResponse>(this as TicketResponse, _$identity);

  /// Serializes this TicketResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.assignedToId, assignedToId) || other.assignedToId == assignedToId)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,subject,status,priority,createdAt,lastUpdatedAt,closedAt,userId,assignedToId,listingId);

@override
String toString() {
  return 'TicketResponse(id: $id, subject: $subject, status: $status, priority: $priority, createdAt: $createdAt, lastUpdatedAt: $lastUpdatedAt, closedAt: $closedAt, userId: $userId, assignedToId: $assignedToId, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class $TicketResponseCopyWith<$Res>  {
  factory $TicketResponseCopyWith(TicketResponse value, $Res Function(TicketResponse) _then) = _$TicketResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Subject') String subject,@JsonKey(name: 'Status') TicketStatus status,@JsonKey(name: 'Priority') TicketPriority priority,@JsonKey(name: 'CreatedAt') DateTime createdAt,@JsonKey(name: 'LastUpdatedAt') DateTime? lastUpdatedAt,@JsonKey(name: 'ClosedAt') DateTime? closedAt,@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'AssignedToId') String? assignedToId,@JsonKey(name: 'ListingId') String? listingId
});




}
/// @nodoc
class _$TicketResponseCopyWithImpl<$Res>
    implements $TicketResponseCopyWith<$Res> {
  _$TicketResponseCopyWithImpl(this._self, this._then);

  final TicketResponse _self;
  final $Res Function(TicketResponse) _then;

/// Create a copy of TicketResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? subject = null,Object? status = null,Object? priority = null,Object? createdAt = null,Object? lastUpdatedAt = freezed,Object? closedAt = freezed,Object? userId = null,Object? assignedToId = freezed,Object? listingId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TicketPriority,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastUpdatedAt: freezed == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,assignedToId: freezed == assignedToId ? _self.assignedToId : assignedToId // ignore: cast_nullable_to_non_nullable
as String?,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketResponse].
extension TicketResponsePatterns on TicketResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketResponse value)  $default,){
final _that = this;
switch (_that) {
case _TicketResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketResponse value)?  $default,){
final _that = this;
switch (_that) {
case _TicketResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Subject')  String subject, @JsonKey(name: 'Status')  TicketStatus status, @JsonKey(name: 'Priority')  TicketPriority priority, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'LastUpdatedAt')  DateTime? lastUpdatedAt, @JsonKey(name: 'ClosedAt')  DateTime? closedAt, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'AssignedToId')  String? assignedToId, @JsonKey(name: 'ListingId')  String? listingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketResponse() when $default != null:
return $default(_that.id,_that.subject,_that.status,_that.priority,_that.createdAt,_that.lastUpdatedAt,_that.closedAt,_that.userId,_that.assignedToId,_that.listingId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Subject')  String subject, @JsonKey(name: 'Status')  TicketStatus status, @JsonKey(name: 'Priority')  TicketPriority priority, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'LastUpdatedAt')  DateTime? lastUpdatedAt, @JsonKey(name: 'ClosedAt')  DateTime? closedAt, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'AssignedToId')  String? assignedToId, @JsonKey(name: 'ListingId')  String? listingId)  $default,) {final _that = this;
switch (_that) {
case _TicketResponse():
return $default(_that.id,_that.subject,_that.status,_that.priority,_that.createdAt,_that.lastUpdatedAt,_that.closedAt,_that.userId,_that.assignedToId,_that.listingId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Subject')  String subject, @JsonKey(name: 'Status')  TicketStatus status, @JsonKey(name: 'Priority')  TicketPriority priority, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'LastUpdatedAt')  DateTime? lastUpdatedAt, @JsonKey(name: 'ClosedAt')  DateTime? closedAt, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'AssignedToId')  String? assignedToId, @JsonKey(name: 'ListingId')  String? listingId)?  $default,) {final _that = this;
switch (_that) {
case _TicketResponse() when $default != null:
return $default(_that.id,_that.subject,_that.status,_that.priority,_that.createdAt,_that.lastUpdatedAt,_that.closedAt,_that.userId,_that.assignedToId,_that.listingId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketResponse implements TicketResponse {
  const _TicketResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Subject') required this.subject, @JsonKey(name: 'Status') required this.status, @JsonKey(name: 'Priority') required this.priority, @JsonKey(name: 'CreatedAt') required this.createdAt, @JsonKey(name: 'LastUpdatedAt') this.lastUpdatedAt, @JsonKey(name: 'ClosedAt') this.closedAt, @JsonKey(name: 'UserId') required this.userId, @JsonKey(name: 'AssignedToId') this.assignedToId, @JsonKey(name: 'ListingId') this.listingId});
  factory _TicketResponse.fromJson(Map<String, dynamic> json) => _$TicketResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Subject') final  String subject;
@override@JsonKey(name: 'Status') final  TicketStatus status;
@override@JsonKey(name: 'Priority') final  TicketPriority priority;
@override@JsonKey(name: 'CreatedAt') final  DateTime createdAt;
@override@JsonKey(name: 'LastUpdatedAt') final  DateTime? lastUpdatedAt;
@override@JsonKey(name: 'ClosedAt') final  DateTime? closedAt;
@override@JsonKey(name: 'UserId') final  String userId;
@override@JsonKey(name: 'AssignedToId') final  String? assignedToId;
@override@JsonKey(name: 'ListingId') final  String? listingId;

/// Create a copy of TicketResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketResponseCopyWith<_TicketResponse> get copyWith => __$TicketResponseCopyWithImpl<_TicketResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.assignedToId, assignedToId) || other.assignedToId == assignedToId)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,subject,status,priority,createdAt,lastUpdatedAt,closedAt,userId,assignedToId,listingId);

@override
String toString() {
  return 'TicketResponse(id: $id, subject: $subject, status: $status, priority: $priority, createdAt: $createdAt, lastUpdatedAt: $lastUpdatedAt, closedAt: $closedAt, userId: $userId, assignedToId: $assignedToId, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class _$TicketResponseCopyWith<$Res> implements $TicketResponseCopyWith<$Res> {
  factory _$TicketResponseCopyWith(_TicketResponse value, $Res Function(_TicketResponse) _then) = __$TicketResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Subject') String subject,@JsonKey(name: 'Status') TicketStatus status,@JsonKey(name: 'Priority') TicketPriority priority,@JsonKey(name: 'CreatedAt') DateTime createdAt,@JsonKey(name: 'LastUpdatedAt') DateTime? lastUpdatedAt,@JsonKey(name: 'ClosedAt') DateTime? closedAt,@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'AssignedToId') String? assignedToId,@JsonKey(name: 'ListingId') String? listingId
});




}
/// @nodoc
class __$TicketResponseCopyWithImpl<$Res>
    implements _$TicketResponseCopyWith<$Res> {
  __$TicketResponseCopyWithImpl(this._self, this._then);

  final _TicketResponse _self;
  final $Res Function(_TicketResponse) _then;

/// Create a copy of TicketResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? subject = null,Object? status = null,Object? priority = null,Object? createdAt = null,Object? lastUpdatedAt = freezed,Object? closedAt = freezed,Object? userId = null,Object? assignedToId = freezed,Object? listingId = freezed,}) {
  return _then(_TicketResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TicketPriority,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,lastUpdatedAt: freezed == lastUpdatedAt ? _self.lastUpdatedAt : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,assignedToId: freezed == assignedToId ? _self.assignedToId : assignedToId // ignore: cast_nullable_to_non_nullable
as String?,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
