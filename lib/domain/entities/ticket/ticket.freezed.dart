// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Ticket {

 String get id; String get subject; TicketStatus get status; TicketPriority get priority; DateTime get createdAt; DateTime? get lastUpdatedAt; DateTime? get closedAt; String get userId; String? get assignedToId; String? get listingId;
/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketCopyWith<Ticket> get copyWith => _$TicketCopyWithImpl<Ticket>(this as Ticket, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Ticket&&(identical(other.id, id) || other.id == id)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.assignedToId, assignedToId) || other.assignedToId == assignedToId)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}


@override
int get hashCode => Object.hash(runtimeType,id,subject,status,priority,createdAt,lastUpdatedAt,closedAt,userId,assignedToId,listingId);

@override
String toString() {
  return 'Ticket(id: $id, subject: $subject, status: $status, priority: $priority, createdAt: $createdAt, lastUpdatedAt: $lastUpdatedAt, closedAt: $closedAt, userId: $userId, assignedToId: $assignedToId, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class $TicketCopyWith<$Res>  {
  factory $TicketCopyWith(Ticket value, $Res Function(Ticket) _then) = _$TicketCopyWithImpl;
@useResult
$Res call({
 String id, String subject, TicketStatus status, TicketPriority priority, DateTime createdAt, DateTime? lastUpdatedAt, DateTime? closedAt, String userId, String? assignedToId, String? listingId
});




}
/// @nodoc
class _$TicketCopyWithImpl<$Res>
    implements $TicketCopyWith<$Res> {
  _$TicketCopyWithImpl(this._self, this._then);

  final Ticket _self;
  final $Res Function(Ticket) _then;

/// Create a copy of Ticket
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


/// Adds pattern-matching-related methods to [Ticket].
extension TicketPatterns on Ticket {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Ticket value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Ticket() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Ticket value)  $default,){
final _that = this;
switch (_that) {
case _Ticket():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Ticket value)?  $default,){
final _that = this;
switch (_that) {
case _Ticket() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String subject,  TicketStatus status,  TicketPriority priority,  DateTime createdAt,  DateTime? lastUpdatedAt,  DateTime? closedAt,  String userId,  String? assignedToId,  String? listingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Ticket() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String subject,  TicketStatus status,  TicketPriority priority,  DateTime createdAt,  DateTime? lastUpdatedAt,  DateTime? closedAt,  String userId,  String? assignedToId,  String? listingId)  $default,) {final _that = this;
switch (_that) {
case _Ticket():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String subject,  TicketStatus status,  TicketPriority priority,  DateTime createdAt,  DateTime? lastUpdatedAt,  DateTime? closedAt,  String userId,  String? assignedToId,  String? listingId)?  $default,) {final _that = this;
switch (_that) {
case _Ticket() when $default != null:
return $default(_that.id,_that.subject,_that.status,_that.priority,_that.createdAt,_that.lastUpdatedAt,_that.closedAt,_that.userId,_that.assignedToId,_that.listingId);case _:
  return null;

}
}

}

/// @nodoc


class _Ticket implements Ticket {
  const _Ticket({required this.id, required this.subject, required this.status, required this.priority, required this.createdAt, this.lastUpdatedAt, this.closedAt, required this.userId, this.assignedToId, this.listingId});
  

@override final  String id;
@override final  String subject;
@override final  TicketStatus status;
@override final  TicketPriority priority;
@override final  DateTime createdAt;
@override final  DateTime? lastUpdatedAt;
@override final  DateTime? closedAt;
@override final  String userId;
@override final  String? assignedToId;
@override final  String? listingId;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketCopyWith<_Ticket> get copyWith => __$TicketCopyWithImpl<_Ticket>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Ticket&&(identical(other.id, id) || other.id == id)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.status, status) || other.status == status)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.lastUpdatedAt, lastUpdatedAt) || other.lastUpdatedAt == lastUpdatedAt)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.assignedToId, assignedToId) || other.assignedToId == assignedToId)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}


@override
int get hashCode => Object.hash(runtimeType,id,subject,status,priority,createdAt,lastUpdatedAt,closedAt,userId,assignedToId,listingId);

@override
String toString() {
  return 'Ticket(id: $id, subject: $subject, status: $status, priority: $priority, createdAt: $createdAt, lastUpdatedAt: $lastUpdatedAt, closedAt: $closedAt, userId: $userId, assignedToId: $assignedToId, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class _$TicketCopyWith<$Res> implements $TicketCopyWith<$Res> {
  factory _$TicketCopyWith(_Ticket value, $Res Function(_Ticket) _then) = __$TicketCopyWithImpl;
@override @useResult
$Res call({
 String id, String subject, TicketStatus status, TicketPriority priority, DateTime createdAt, DateTime? lastUpdatedAt, DateTime? closedAt, String userId, String? assignedToId, String? listingId
});




}
/// @nodoc
class __$TicketCopyWithImpl<$Res>
    implements _$TicketCopyWith<$Res> {
  __$TicketCopyWithImpl(this._self, this._then);

  final _Ticket _self;
  final $Res Function(_Ticket) _then;

/// Create a copy of Ticket
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? subject = null,Object? status = null,Object? priority = null,Object? createdAt = null,Object? lastUpdatedAt = freezed,Object? closedAt = freezed,Object? userId = null,Object? assignedToId = freezed,Object? listingId = freezed,}) {
  return _then(_Ticket(
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
