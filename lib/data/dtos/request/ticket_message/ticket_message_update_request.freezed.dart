// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_message_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TicketMessageUpdateRequest {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Message') String get message;@JsonKey(name: 'IsInternalNote') bool get isInternalNote;
/// Create a copy of TicketMessageUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TicketMessageUpdateRequestCopyWith<TicketMessageUpdateRequest> get copyWith => _$TicketMessageUpdateRequestCopyWithImpl<TicketMessageUpdateRequest>(this as TicketMessageUpdateRequest, _$identity);

  /// Serializes this TicketMessageUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TicketMessageUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.message, message) || other.message == message)&&(identical(other.isInternalNote, isInternalNote) || other.isInternalNote == isInternalNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,message,isInternalNote);

@override
String toString() {
  return 'TicketMessageUpdateRequest(id: $id, message: $message, isInternalNote: $isInternalNote)';
}


}

/// @nodoc
abstract mixin class $TicketMessageUpdateRequestCopyWith<$Res>  {
  factory $TicketMessageUpdateRequestCopyWith(TicketMessageUpdateRequest value, $Res Function(TicketMessageUpdateRequest) _then) = _$TicketMessageUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Message') String message,@JsonKey(name: 'IsInternalNote') bool isInternalNote
});




}
/// @nodoc
class _$TicketMessageUpdateRequestCopyWithImpl<$Res>
    implements $TicketMessageUpdateRequestCopyWith<$Res> {
  _$TicketMessageUpdateRequestCopyWithImpl(this._self, this._then);

  final TicketMessageUpdateRequest _self;
  final $Res Function(TicketMessageUpdateRequest) _then;

/// Create a copy of TicketMessageUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? message = null,Object? isInternalNote = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isInternalNote: null == isInternalNote ? _self.isInternalNote : isInternalNote // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TicketMessageUpdateRequest].
extension TicketMessageUpdateRequestPatterns on TicketMessageUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TicketMessageUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TicketMessageUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TicketMessageUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _TicketMessageUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TicketMessageUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _TicketMessageUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Message')  String message, @JsonKey(name: 'IsInternalNote')  bool isInternalNote)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TicketMessageUpdateRequest() when $default != null:
return $default(_that.id,_that.message,_that.isInternalNote);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Message')  String message, @JsonKey(name: 'IsInternalNote')  bool isInternalNote)  $default,) {final _that = this;
switch (_that) {
case _TicketMessageUpdateRequest():
return $default(_that.id,_that.message,_that.isInternalNote);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Message')  String message, @JsonKey(name: 'IsInternalNote')  bool isInternalNote)?  $default,) {final _that = this;
switch (_that) {
case _TicketMessageUpdateRequest() when $default != null:
return $default(_that.id,_that.message,_that.isInternalNote);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TicketMessageUpdateRequest implements TicketMessageUpdateRequest {
  const _TicketMessageUpdateRequest({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Message') required this.message, @JsonKey(name: 'IsInternalNote') required this.isInternalNote});
  factory _TicketMessageUpdateRequest.fromJson(Map<String, dynamic> json) => _$TicketMessageUpdateRequestFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Message') final  String message;
@override@JsonKey(name: 'IsInternalNote') final  bool isInternalNote;

/// Create a copy of TicketMessageUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TicketMessageUpdateRequestCopyWith<_TicketMessageUpdateRequest> get copyWith => __$TicketMessageUpdateRequestCopyWithImpl<_TicketMessageUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TicketMessageUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TicketMessageUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.message, message) || other.message == message)&&(identical(other.isInternalNote, isInternalNote) || other.isInternalNote == isInternalNote));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,message,isInternalNote);

@override
String toString() {
  return 'TicketMessageUpdateRequest(id: $id, message: $message, isInternalNote: $isInternalNote)';
}


}

/// @nodoc
abstract mixin class _$TicketMessageUpdateRequestCopyWith<$Res> implements $TicketMessageUpdateRequestCopyWith<$Res> {
  factory _$TicketMessageUpdateRequestCopyWith(_TicketMessageUpdateRequest value, $Res Function(_TicketMessageUpdateRequest) _then) = __$TicketMessageUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Message') String message,@JsonKey(name: 'IsInternalNote') bool isInternalNote
});




}
/// @nodoc
class __$TicketMessageUpdateRequestCopyWithImpl<$Res>
    implements _$TicketMessageUpdateRequestCopyWith<$Res> {
  __$TicketMessageUpdateRequestCopyWithImpl(this._self, this._then);

  final _TicketMessageUpdateRequest _self;
  final $Res Function(_TicketMessageUpdateRequest) _then;

/// Create a copy of TicketMessageUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? message = null,Object? isInternalNote = null,}) {
  return _then(_TicketMessageUpdateRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,isInternalNote: null == isInternalNote ? _self.isInternalNote : isInternalNote // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
