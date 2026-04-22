// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketAddRequest {

@JsonKey(name: 'Subject') String get subject;@JsonKey(name: 'Priority') TicketPriority get priority;@JsonKey(name: 'UserId') String get userId;@JsonKey(name: 'ListingId') String? get listingId;
/// Create a copy of TicketAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketAddRequestCopyWith<TicketAddRequest> get copyWith => _$TicketAddRequestCopyWithImpl<TicketAddRequest>(this as TicketAddRequest, _$identity);

  /// Serializes this TicketAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketAddRequest&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subject,priority,userId,listingId);

@override
String toString() {
  return 'TicketAddRequest(subject: $subject, priority: $priority, userId: $userId, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class $TicketAddRequestCopyWith<$Res>  {
  factory $TicketAddRequestCopyWith(TicketAddRequest value, $Res Function(TicketAddRequest) _then) = _$TicketAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Subject') String subject,@JsonKey(name: 'Priority') TicketPriority priority,@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'ListingId') String? listingId
});




}
/// @nodoc
class _$TicketAddRequestCopyWithImpl<$Res>
    implements $TicketAddRequestCopyWith<$Res> {
  _$TicketAddRequestCopyWithImpl(this._self, this._then);

  final TicketAddRequest _self;
  final $Res Function(TicketAddRequest) _then;

/// Create a copy of TicketAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subject = null,Object? priority = null,Object? userId = null,Object? listingId = freezed,}) {
  return _then(_self.copyWith(
subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TicketPriority,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketAddRequest].
extension TicketAddRequestPatterns on TicketAddRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketAddRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _TicketAddRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TicketAddRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Subject')  String subject, @JsonKey(name: 'Priority')  TicketPriority priority, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'ListingId')  String? listingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketAddRequest() when $default != null:
return $default(_that.subject,_that.priority,_that.userId,_that.listingId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Subject')  String subject, @JsonKey(name: 'Priority')  TicketPriority priority, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'ListingId')  String? listingId)  $default,) {final _that = this;
switch (_that) {
case _TicketAddRequest():
return $default(_that.subject,_that.priority,_that.userId,_that.listingId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Subject')  String subject, @JsonKey(name: 'Priority')  TicketPriority priority, @JsonKey(name: 'UserId')  String userId, @JsonKey(name: 'ListingId')  String? listingId)?  $default,) {final _that = this;
switch (_that) {
case _TicketAddRequest() when $default != null:
return $default(_that.subject,_that.priority,_that.userId,_that.listingId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketAddRequest implements TicketAddRequest {
  const _TicketAddRequest({@JsonKey(name: 'Subject') required this.subject, @JsonKey(name: 'Priority') required this.priority, @JsonKey(name: 'UserId') required this.userId, @JsonKey(name: 'ListingId') this.listingId});
  factory _TicketAddRequest.fromJson(Map<String, dynamic> json) => _$TicketAddRequestFromJson(json);

@override@JsonKey(name: 'Subject') final  String subject;
@override@JsonKey(name: 'Priority') final  TicketPriority priority;
@override@JsonKey(name: 'UserId') final  String userId;
@override@JsonKey(name: 'ListingId') final  String? listingId;

/// Create a copy of TicketAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketAddRequestCopyWith<_TicketAddRequest> get copyWith => __$TicketAddRequestCopyWithImpl<_TicketAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketAddRequest&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.priority, priority) || other.priority == priority)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subject,priority,userId,listingId);

@override
String toString() {
  return 'TicketAddRequest(subject: $subject, priority: $priority, userId: $userId, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class _$TicketAddRequestCopyWith<$Res> implements $TicketAddRequestCopyWith<$Res> {
  factory _$TicketAddRequestCopyWith(_TicketAddRequest value, $Res Function(_TicketAddRequest) _then) = __$TicketAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Subject') String subject,@JsonKey(name: 'Priority') TicketPriority priority,@JsonKey(name: 'UserId') String userId,@JsonKey(name: 'ListingId') String? listingId
});




}
/// @nodoc
class __$TicketAddRequestCopyWithImpl<$Res>
    implements _$TicketAddRequestCopyWith<$Res> {
  __$TicketAddRequestCopyWithImpl(this._self, this._then);

  final _TicketAddRequest _self;
  final $Res Function(_TicketAddRequest) _then;

/// Create a copy of TicketAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subject = null,Object? priority = null,Object? userId = null,Object? listingId = freezed,}) {
  return _then(_TicketAddRequest(
subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,priority: null == priority ? _self.priority : priority // ignore: cast_nullable_to_non_nullable
as TicketPriority,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
