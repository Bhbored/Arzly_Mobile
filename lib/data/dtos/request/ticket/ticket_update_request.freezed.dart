// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketUpdateRequest {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Subject') String get subject;@JsonKey(name: 'Status') TicketStatus get status;@JsonKey(name: 'Priority') TicketPriority get priority;@JsonKey(name: 'ClosedAt') DateTime? get closedAt;@JsonKey(name: 'AssignedToId') String? get assignedToId;
/// Create a copy of TicketUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketUpdateRequestCopyWith<TicketUpdateRequest> get copyWith => _$TicketUpdateRequestCopyWithImpl<TicketUpdateRequest>(this as TicketUpdateRequest, _$identity);

  /// Serializes this TicketUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.assignedToId, assignedToId) || other.assignedToId == assignedToId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,subject,status,priority,closedAt,assignedToId);

@override
String toString() {
  return 'TicketUpdateRequest(id: $id, subject: $subject, status: $status, priority: $priority, closedAt: $closedAt, assignedToId: $assignedToId)';
}


}

/// @nodoc
abstract mixin class $TicketUpdateRequestCopyWith<$Res>  {
  factory $TicketUpdateRequestCopyWith(TicketUpdateRequest value, $Res Function(TicketUpdateRequest) _then) = _$TicketUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Subject') String subject,@JsonKey(name: 'Status') TicketStatus status,@JsonKey(name: 'Priority') TicketPriority priority,@JsonKey(name: 'ClosedAt') DateTime? closedAt,@JsonKey(name: 'AssignedToId') String? assignedToId
});




}
/// @nodoc
class _$TicketUpdateRequestCopyWithImpl<$Res>
    implements $TicketUpdateRequestCopyWith<$Res> {
  _$TicketUpdateRequestCopyWithImpl(this._self, this._then);

  final TicketUpdateRequest _self;
  final $Res Function(TicketUpdateRequest) _then;

/// Create a copy of TicketUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? subject = null,Object? status = null,Object? priority = null,Object? closedAt = freezed,Object? assignedToId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TicketPriority,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedToId: freezed == assignedToId ? _self.assignedToId : assignedToId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketUpdateRequest].
extension TicketUpdateRequestPatterns on TicketUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _TicketUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TicketUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Subject')  String subject, @JsonKey(name: 'Status')  TicketStatus status, @JsonKey(name: 'Priority')  TicketPriority priority, @JsonKey(name: 'ClosedAt')  DateTime? closedAt, @JsonKey(name: 'AssignedToId')  String? assignedToId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketUpdateRequest() when $default != null:
return $default(_that.id,_that.subject,_that.status,_that.priority,_that.closedAt,_that.assignedToId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Subject')  String subject, @JsonKey(name: 'Status')  TicketStatus status, @JsonKey(name: 'Priority')  TicketPriority priority, @JsonKey(name: 'ClosedAt')  DateTime? closedAt, @JsonKey(name: 'AssignedToId')  String? assignedToId)  $default,) {final _that = this;
switch (_that) {
case _TicketUpdateRequest():
return $default(_that.id,_that.subject,_that.status,_that.priority,_that.closedAt,_that.assignedToId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Subject')  String subject, @JsonKey(name: 'Status')  TicketStatus status, @JsonKey(name: 'Priority')  TicketPriority priority, @JsonKey(name: 'ClosedAt')  DateTime? closedAt, @JsonKey(name: 'AssignedToId')  String? assignedToId)?  $default,) {final _that = this;
switch (_that) {
case _TicketUpdateRequest() when $default != null:
return $default(_that.id,_that.subject,_that.status,_that.priority,_that.closedAt,_that.assignedToId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketUpdateRequest implements TicketUpdateRequest {
  const _TicketUpdateRequest({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Subject') required this.subject, @JsonKey(name: 'Status') required this.status, @JsonKey(name: 'Priority') required this.priority, @JsonKey(name: 'ClosedAt') this.closedAt, @JsonKey(name: 'AssignedToId') this.assignedToId});
  factory _TicketUpdateRequest.fromJson(Map<String, dynamic> json) => _$TicketUpdateRequestFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Subject') final  String subject;
@override@JsonKey(name: 'Status') final  TicketStatus status;
@override@JsonKey(name: 'Priority') final  TicketPriority priority;
@override@JsonKey(name: 'ClosedAt') final  DateTime? closedAt;
@override@JsonKey(name: 'AssignedToId') final  String? assignedToId;

/// Create a copy of TicketUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketUpdateRequestCopyWith<_TicketUpdateRequest> get copyWith => __$TicketUpdateRequestCopyWithImpl<_TicketUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.assignedToId, assignedToId) || other.assignedToId == assignedToId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,subject,status,priority,closedAt,assignedToId);

@override
String toString() {
  return 'TicketUpdateRequest(id: $id, subject: $subject, status: $status, priority: $priority, closedAt: $closedAt, assignedToId: $assignedToId)';
}


}

/// @nodoc
abstract mixin class _$TicketUpdateRequestCopyWith<$Res> implements $TicketUpdateRequestCopyWith<$Res> {
  factory _$TicketUpdateRequestCopyWith(_TicketUpdateRequest value, $Res Function(_TicketUpdateRequest) _then) = __$TicketUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Subject') String subject,@JsonKey(name: 'Status') TicketStatus status,@JsonKey(name: 'Priority') TicketPriority priority,@JsonKey(name: 'ClosedAt') DateTime? closedAt,@JsonKey(name: 'AssignedToId') String? assignedToId
});




}
/// @nodoc
class __$TicketUpdateRequestCopyWithImpl<$Res>
    implements _$TicketUpdateRequestCopyWith<$Res> {
  __$TicketUpdateRequestCopyWithImpl(this._self, this._then);

  final _TicketUpdateRequest _self;
  final $Res Function(_TicketUpdateRequest) _then;

/// Create a copy of TicketUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? subject = null,Object? status = null,Object? priority = null,Object? closedAt = freezed,Object? assignedToId = freezed,}) {
  return _then(_TicketUpdateRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TicketStatus,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TicketPriority,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,assignedToId: freezed == assignedToId ? _self.assignedToId : assignedToId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
