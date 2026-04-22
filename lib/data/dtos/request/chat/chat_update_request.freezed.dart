// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatUpdateRequest {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'IsArchived') bool get isArchived;@JsonKey(name: 'IsDeleted') bool get isDeleted;@JsonKey(name: 'IsDiscontinued') bool get isDiscontinued;@JsonKey(name: 'LastActivity') DateTime get lastActivity;
/// Create a copy of ChatUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatUpdateRequestCopyWith<ChatUpdateRequest> get copyWith => _$ChatUpdateRequestCopyWithImpl<ChatUpdateRequest>(this as ChatUpdateRequest, _$identity);

  /// Serializes this ChatUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.isDiscontinued, isDiscontinued) || other.isDiscontinued == isDiscontinued)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isArchived,isDeleted,isDiscontinued,lastActivity);

@override
String toString() {
  return 'ChatUpdateRequest(id: $id, isArchived: $isArchived, isDeleted: $isDeleted, isDiscontinued: $isDiscontinued, lastActivity: $lastActivity)';
}


}

/// @nodoc
abstract mixin class $ChatUpdateRequestCopyWith<$Res>  {
  factory $ChatUpdateRequestCopyWith(ChatUpdateRequest value, $Res Function(ChatUpdateRequest) _then) = _$ChatUpdateRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'IsArchived') bool isArchived,@JsonKey(name: 'IsDeleted') bool isDeleted,@JsonKey(name: 'IsDiscontinued') bool isDiscontinued,@JsonKey(name: 'LastActivity') DateTime lastActivity
});




}
/// @nodoc
class _$ChatUpdateRequestCopyWithImpl<$Res>
    implements $ChatUpdateRequestCopyWith<$Res> {
  _$ChatUpdateRequestCopyWithImpl(this._self, this._then);

  final ChatUpdateRequest _self;
  final $Res Function(ChatUpdateRequest) _then;

/// Create a copy of ChatUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? isArchived = null,Object? isDeleted = null,Object? isDiscontinued = null,Object? lastActivity = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,isDiscontinued: null == isDiscontinued ? _self.isDiscontinued : isDiscontinued // ignore: cast_nullable_to_non_nullable
as bool,lastActivity: null == lastActivity ? _self.lastActivity : lastActivity // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatUpdateRequest].
extension ChatUpdateRequestPatterns on ChatUpdateRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatUpdateRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatUpdateRequest value)  $default,){
final _that = this;
switch (_that) {
case _ChatUpdateRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatUpdateRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ChatUpdateRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'IsArchived')  bool isArchived, @JsonKey(name: 'IsDeleted')  bool isDeleted, @JsonKey(name: 'IsDiscontinued')  bool isDiscontinued, @JsonKey(name: 'LastActivity')  DateTime lastActivity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatUpdateRequest() when $default != null:
return $default(_that.id,_that.isArchived,_that.isDeleted,_that.isDiscontinued,_that.lastActivity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'IsArchived')  bool isArchived, @JsonKey(name: 'IsDeleted')  bool isDeleted, @JsonKey(name: 'IsDiscontinued')  bool isDiscontinued, @JsonKey(name: 'LastActivity')  DateTime lastActivity)  $default,) {final _that = this;
switch (_that) {
case _ChatUpdateRequest():
return $default(_that.id,_that.isArchived,_that.isDeleted,_that.isDiscontinued,_that.lastActivity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'IsArchived')  bool isArchived, @JsonKey(name: 'IsDeleted')  bool isDeleted, @JsonKey(name: 'IsDiscontinued')  bool isDiscontinued, @JsonKey(name: 'LastActivity')  DateTime lastActivity)?  $default,) {final _that = this;
switch (_that) {
case _ChatUpdateRequest() when $default != null:
return $default(_that.id,_that.isArchived,_that.isDeleted,_that.isDiscontinued,_that.lastActivity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatUpdateRequest implements ChatUpdateRequest {
  const _ChatUpdateRequest({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'IsArchived') required this.isArchived, @JsonKey(name: 'IsDeleted') required this.isDeleted, @JsonKey(name: 'IsDiscontinued') required this.isDiscontinued, @JsonKey(name: 'LastActivity') required this.lastActivity});
  factory _ChatUpdateRequest.fromJson(Map<String, dynamic> json) => _$ChatUpdateRequestFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'IsArchived') final  bool isArchived;
@override@JsonKey(name: 'IsDeleted') final  bool isDeleted;
@override@JsonKey(name: 'IsDiscontinued') final  bool isDiscontinued;
@override@JsonKey(name: 'LastActivity') final  DateTime lastActivity;

/// Create a copy of ChatUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatUpdateRequestCopyWith<_ChatUpdateRequest> get copyWith => __$ChatUpdateRequestCopyWithImpl<_ChatUpdateRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatUpdateRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatUpdateRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.isDiscontinued, isDiscontinued) || other.isDiscontinued == isDiscontinued)&&(identical(other.lastActivity, lastActivity) || other.lastActivity == lastActivity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,isArchived,isDeleted,isDiscontinued,lastActivity);

@override
String toString() {
  return 'ChatUpdateRequest(id: $id, isArchived: $isArchived, isDeleted: $isDeleted, isDiscontinued: $isDiscontinued, lastActivity: $lastActivity)';
}


}

/// @nodoc
abstract mixin class _$ChatUpdateRequestCopyWith<$Res> implements $ChatUpdateRequestCopyWith<$Res> {
  factory _$ChatUpdateRequestCopyWith(_ChatUpdateRequest value, $Res Function(_ChatUpdateRequest) _then) = __$ChatUpdateRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'IsArchived') bool isArchived,@JsonKey(name: 'IsDeleted') bool isDeleted,@JsonKey(name: 'IsDiscontinued') bool isDiscontinued,@JsonKey(name: 'LastActivity') DateTime lastActivity
});




}
/// @nodoc
class __$ChatUpdateRequestCopyWithImpl<$Res>
    implements _$ChatUpdateRequestCopyWith<$Res> {
  __$ChatUpdateRequestCopyWithImpl(this._self, this._then);

  final _ChatUpdateRequest _self;
  final $Res Function(_ChatUpdateRequest) _then;

/// Create a copy of ChatUpdateRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? isArchived = null,Object? isDeleted = null,Object? isDiscontinued = null,Object? lastActivity = null,}) {
  return _then(_ChatUpdateRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,isDiscontinued: null == isDiscontinued ? _self.isDiscontinued : isDiscontinued // ignore: cast_nullable_to_non_nullable
as bool,lastActivity: null == lastActivity ? _self.lastActivity : lastActivity // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
