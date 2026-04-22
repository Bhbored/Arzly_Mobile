// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubCategoryOptions {

 String get id; String get subCategoryId; String get name; String? get description; int get itemsCount;
/// Create a copy of SubCategoryOptions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryOptionsCopyWith<SubCategoryOptions> get copyWith => _$SubCategoryOptionsCopyWithImpl<SubCategoryOptions>(this as SubCategoryOptions, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryOptions&&(identical(other.id, id) || other.id == id)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,subCategoryId,name,description,itemsCount);

@override
String toString() {
  return 'SubCategoryOptions(id: $id, subCategoryId: $subCategoryId, name: $name, description: $description, itemsCount: $itemsCount)';
}


}

/// @nodoc
abstract mixin class $SubCategoryOptionsCopyWith<$Res>  {
  factory $SubCategoryOptionsCopyWith(SubCategoryOptions value, $Res Function(SubCategoryOptions) _then) = _$SubCategoryOptionsCopyWithImpl;
@useResult
$Res call({
 String id, String subCategoryId, String name, String? description, int itemsCount
});




}
/// @nodoc
class _$SubCategoryOptionsCopyWithImpl<$Res>
    implements $SubCategoryOptionsCopyWith<$Res> {
  _$SubCategoryOptionsCopyWithImpl(this._self, this._then);

  final SubCategoryOptions _self;
  final $Res Function(SubCategoryOptions) _then;

/// Create a copy of SubCategoryOptions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? subCategoryId = null,Object? name = null,Object? description = freezed,Object? itemsCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subCategoryId: null == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SubCategoryOptions].
extension SubCategoryOptionsPatterns on SubCategoryOptions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryOptions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryOptions() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryOptions value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryOptions():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryOptions value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryOptions() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String subCategoryId,  String name,  String? description,  int itemsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryOptions() when $default != null:
return $default(_that.id,_that.subCategoryId,_that.name,_that.description,_that.itemsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String subCategoryId,  String name,  String? description,  int itemsCount)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryOptions():
return $default(_that.id,_that.subCategoryId,_that.name,_that.description,_that.itemsCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String subCategoryId,  String name,  String? description,  int itemsCount)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryOptions() when $default != null:
return $default(_that.id,_that.subCategoryId,_that.name,_that.description,_that.itemsCount);case _:
  return null;

}
}

}

/// @nodoc


class _SubCategoryOptions implements SubCategoryOptions {
  const _SubCategoryOptions({required this.id, required this.subCategoryId, required this.name, this.description, required this.itemsCount});
  

@override final  String id;
@override final  String subCategoryId;
@override final  String name;
@override final  String? description;
@override final  int itemsCount;

/// Create a copy of SubCategoryOptions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryOptionsCopyWith<_SubCategoryOptions> get copyWith => __$SubCategoryOptionsCopyWithImpl<_SubCategoryOptions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryOptions&&(identical(other.id, id) || other.id == id)&&(identical(other.subCategoryId, subCategoryId) || other.subCategoryId == subCategoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount));
}


@override
int get hashCode => Object.hash(runtimeType,id,subCategoryId,name,description,itemsCount);

@override
String toString() {
  return 'SubCategoryOptions(id: $id, subCategoryId: $subCategoryId, name: $name, description: $description, itemsCount: $itemsCount)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryOptionsCopyWith<$Res> implements $SubCategoryOptionsCopyWith<$Res> {
  factory _$SubCategoryOptionsCopyWith(_SubCategoryOptions value, $Res Function(_SubCategoryOptions) _then) = __$SubCategoryOptionsCopyWithImpl;
@override @useResult
$Res call({
 String id, String subCategoryId, String name, String? description, int itemsCount
});




}
/// @nodoc
class __$SubCategoryOptionsCopyWithImpl<$Res>
    implements _$SubCategoryOptionsCopyWith<$Res> {
  __$SubCategoryOptionsCopyWithImpl(this._self, this._then);

  final _SubCategoryOptions _self;
  final $Res Function(_SubCategoryOptions) _then;

/// Create a copy of SubCategoryOptions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? subCategoryId = null,Object? name = null,Object? description = freezed,Object? itemsCount = null,}) {
  return _then(_SubCategoryOptions(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subCategoryId: null == subCategoryId ? _self.subCategoryId : subCategoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
