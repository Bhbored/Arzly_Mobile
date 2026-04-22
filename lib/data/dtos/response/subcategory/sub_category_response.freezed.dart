// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubCategoryResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'CategoryId') String get categoryId;@JsonKey(name: 'Name') String get name;@JsonKey(name: 'Description') String? get description;@JsonKey(name: 'ItemsCount') int get itemsCount;
/// Create a copy of SubCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubCategoryResponseCopyWith<SubCategoryResponse> get copyWith => _$SubCategoryResponseCopyWithImpl<SubCategoryResponse>(this as SubCategoryResponse, _$identity);

  /// Serializes this SubCategoryResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubCategoryResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,description,itemsCount);

@override
String toString() {
  return 'SubCategoryResponse(id: $id, categoryId: $categoryId, name: $name, description: $description, itemsCount: $itemsCount)';
}


}

/// @nodoc
abstract mixin class $SubCategoryResponseCopyWith<$Res>  {
  factory $SubCategoryResponseCopyWith(SubCategoryResponse value, $Res Function(SubCategoryResponse) _then) = _$SubCategoryResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'CategoryId') String categoryId,@JsonKey(name: 'Name') String name,@JsonKey(name: 'Description') String? description,@JsonKey(name: 'ItemsCount') int itemsCount
});




}
/// @nodoc
class _$SubCategoryResponseCopyWithImpl<$Res>
    implements $SubCategoryResponseCopyWith<$Res> {
  _$SubCategoryResponseCopyWithImpl(this._self, this._then);

  final SubCategoryResponse _self;
  final $Res Function(SubCategoryResponse) _then;

/// Create a copy of SubCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? categoryId = null,Object? name = null,Object? description = freezed,Object? itemsCount = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SubCategoryResponse].
extension SubCategoryResponsePatterns on SubCategoryResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubCategoryResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubCategoryResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubCategoryResponse value)  $default,){
final _that = this;
switch (_that) {
case _SubCategoryResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubCategoryResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SubCategoryResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'CategoryId')  String categoryId, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'Description')  String? description, @JsonKey(name: 'ItemsCount')  int itemsCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubCategoryResponse() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.description,_that.itemsCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'CategoryId')  String categoryId, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'Description')  String? description, @JsonKey(name: 'ItemsCount')  int itemsCount)  $default,) {final _that = this;
switch (_that) {
case _SubCategoryResponse():
return $default(_that.id,_that.categoryId,_that.name,_that.description,_that.itemsCount);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'CategoryId')  String categoryId, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'Description')  String? description, @JsonKey(name: 'ItemsCount')  int itemsCount)?  $default,) {final _that = this;
switch (_that) {
case _SubCategoryResponse() when $default != null:
return $default(_that.id,_that.categoryId,_that.name,_that.description,_that.itemsCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubCategoryResponse implements SubCategoryResponse {
  const _SubCategoryResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'CategoryId') required this.categoryId, @JsonKey(name: 'Name') required this.name, @JsonKey(name: 'Description') this.description, @JsonKey(name: 'ItemsCount') required this.itemsCount});
  factory _SubCategoryResponse.fromJson(Map<String, dynamic> json) => _$SubCategoryResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'CategoryId') final  String categoryId;
@override@JsonKey(name: 'Name') final  String name;
@override@JsonKey(name: 'Description') final  String? description;
@override@JsonKey(name: 'ItemsCount') final  int itemsCount;

/// Create a copy of SubCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubCategoryResponseCopyWith<_SubCategoryResponse> get copyWith => __$SubCategoryResponseCopyWithImpl<_SubCategoryResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubCategoryResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubCategoryResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.itemsCount, itemsCount) || other.itemsCount == itemsCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,categoryId,name,description,itemsCount);

@override
String toString() {
  return 'SubCategoryResponse(id: $id, categoryId: $categoryId, name: $name, description: $description, itemsCount: $itemsCount)';
}


}

/// @nodoc
abstract mixin class _$SubCategoryResponseCopyWith<$Res> implements $SubCategoryResponseCopyWith<$Res> {
  factory _$SubCategoryResponseCopyWith(_SubCategoryResponse value, $Res Function(_SubCategoryResponse) _then) = __$SubCategoryResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'CategoryId') String categoryId,@JsonKey(name: 'Name') String name,@JsonKey(name: 'Description') String? description,@JsonKey(name: 'ItemsCount') int itemsCount
});




}
/// @nodoc
class __$SubCategoryResponseCopyWithImpl<$Res>
    implements _$SubCategoryResponseCopyWith<$Res> {
  __$SubCategoryResponseCopyWithImpl(this._self, this._then);

  final _SubCategoryResponse _self;
  final $Res Function(_SubCategoryResponse) _then;

/// Create a copy of SubCategoryResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? categoryId = null,Object? name = null,Object? description = freezed,Object? itemsCount = null,}) {
  return _then(_SubCategoryResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,itemsCount: null == itemsCount ? _self.itemsCount : itemsCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
