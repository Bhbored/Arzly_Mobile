// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListingResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Title') String get title;@JsonKey(name: 'Description') String get description;@JsonKey(name: 'Price') double get price;@JsonKey(name: 'Status') ListingStatus get status;@JsonKey(name: 'PrimaryImageUrl') String? get primaryImageUrl;@JsonKey(name: 'ImagesUrl') List<String>? get imagesUrl;@JsonKey(name: 'CreatedAt') DateTime get createdAt;@JsonKey(name: 'UpdatedAt') DateTime? get updatedAt;@JsonKey(name: 'OwnerId') String get ownerId;@JsonKey(name: 'CategoryId') String get categoryId;@JsonKey(name: 'SubcategoryId') String get subcategoryId;@JsonKey(name: 'PickupLocationId') String get pickupLocationId;
/// Create a copy of ListingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingResponseCopyWith<ListingResponse> get copyWith => _$ListingResponseCopyWithImpl<ListingResponse>(this as ListingResponse, _$identity);

  /// Serializes this ListingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.primaryImageUrl, primaryImageUrl) || other.primaryImageUrl == primaryImageUrl)&&const DeepCollectionEquality().equals(other.imagesUrl, imagesUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.pickupLocationId, pickupLocationId) || other.pickupLocationId == pickupLocationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,status,primaryImageUrl,const DeepCollectionEquality().hash(imagesUrl),createdAt,updatedAt,ownerId,categoryId,subcategoryId,pickupLocationId);

@override
String toString() {
  return 'ListingResponse(id: $id, title: $title, description: $description, price: $price, status: $status, primaryImageUrl: $primaryImageUrl, imagesUrl: $imagesUrl, createdAt: $createdAt, updatedAt: $updatedAt, ownerId: $ownerId, categoryId: $categoryId, subcategoryId: $subcategoryId, pickupLocationId: $pickupLocationId)';
}


}

/// @nodoc
abstract mixin class $ListingResponseCopyWith<$Res>  {
  factory $ListingResponseCopyWith(ListingResponse value, $Res Function(ListingResponse) _then) = _$ListingResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Title') String title,@JsonKey(name: 'Description') String description,@JsonKey(name: 'Price') double price,@JsonKey(name: 'Status') ListingStatus status,@JsonKey(name: 'PrimaryImageUrl') String? primaryImageUrl,@JsonKey(name: 'ImagesUrl') List<String>? imagesUrl,@JsonKey(name: 'CreatedAt') DateTime createdAt,@JsonKey(name: 'UpdatedAt') DateTime? updatedAt,@JsonKey(name: 'OwnerId') String ownerId,@JsonKey(name: 'CategoryId') String categoryId,@JsonKey(name: 'SubcategoryId') String subcategoryId,@JsonKey(name: 'PickupLocationId') String pickupLocationId
});




}
/// @nodoc
class _$ListingResponseCopyWithImpl<$Res>
    implements $ListingResponseCopyWith<$Res> {
  _$ListingResponseCopyWithImpl(this._self, this._then);

  final ListingResponse _self;
  final $Res Function(ListingResponse) _then;

/// Create a copy of ListingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? status = null,Object? primaryImageUrl = freezed,Object? imagesUrl = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? ownerId = null,Object? categoryId = null,Object? subcategoryId = null,Object? pickupLocationId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListingStatus,primaryImageUrl: freezed == primaryImageUrl ? _self.primaryImageUrl : primaryImageUrl // ignore: cast_nullable_to_non_nullable
as String?,imagesUrl: freezed == imagesUrl ? _self.imagesUrl : imagesUrl // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,pickupLocationId: null == pickupLocationId ? _self.pickupLocationId : pickupLocationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingResponse].
extension ListingResponsePatterns on ListingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingResponse value)  $default,){
final _that = this;
switch (_that) {
case _ListingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ListingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Price')  double price, @JsonKey(name: 'Status')  ListingStatus status, @JsonKey(name: 'PrimaryImageUrl')  String? primaryImageUrl, @JsonKey(name: 'ImagesUrl')  List<String>? imagesUrl, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'UpdatedAt')  DateTime? updatedAt, @JsonKey(name: 'OwnerId')  String ownerId, @JsonKey(name: 'CategoryId')  String categoryId, @JsonKey(name: 'SubcategoryId')  String subcategoryId, @JsonKey(name: 'PickupLocationId')  String pickupLocationId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingResponse() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.status,_that.primaryImageUrl,_that.imagesUrl,_that.createdAt,_that.updatedAt,_that.ownerId,_that.categoryId,_that.subcategoryId,_that.pickupLocationId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Price')  double price, @JsonKey(name: 'Status')  ListingStatus status, @JsonKey(name: 'PrimaryImageUrl')  String? primaryImageUrl, @JsonKey(name: 'ImagesUrl')  List<String>? imagesUrl, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'UpdatedAt')  DateTime? updatedAt, @JsonKey(name: 'OwnerId')  String ownerId, @JsonKey(name: 'CategoryId')  String categoryId, @JsonKey(name: 'SubcategoryId')  String subcategoryId, @JsonKey(name: 'PickupLocationId')  String pickupLocationId)  $default,) {final _that = this;
switch (_that) {
case _ListingResponse():
return $default(_that.id,_that.title,_that.description,_that.price,_that.status,_that.primaryImageUrl,_that.imagesUrl,_that.createdAt,_that.updatedAt,_that.ownerId,_that.categoryId,_that.subcategoryId,_that.pickupLocationId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Price')  double price, @JsonKey(name: 'Status')  ListingStatus status, @JsonKey(name: 'PrimaryImageUrl')  String? primaryImageUrl, @JsonKey(name: 'ImagesUrl')  List<String>? imagesUrl, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'UpdatedAt')  DateTime? updatedAt, @JsonKey(name: 'OwnerId')  String ownerId, @JsonKey(name: 'CategoryId')  String categoryId, @JsonKey(name: 'SubcategoryId')  String subcategoryId, @JsonKey(name: 'PickupLocationId')  String pickupLocationId)?  $default,) {final _that = this;
switch (_that) {
case _ListingResponse() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.status,_that.primaryImageUrl,_that.imagesUrl,_that.createdAt,_that.updatedAt,_that.ownerId,_that.categoryId,_that.subcategoryId,_that.pickupLocationId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingResponse implements ListingResponse {
  const _ListingResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Title') required this.title, @JsonKey(name: 'Description') required this.description, @JsonKey(name: 'Price') required this.price, @JsonKey(name: 'Status') required this.status, @JsonKey(name: 'PrimaryImageUrl') this.primaryImageUrl, @JsonKey(name: 'ImagesUrl') final  List<String>? imagesUrl, @JsonKey(name: 'CreatedAt') required this.createdAt, @JsonKey(name: 'UpdatedAt') this.updatedAt, @JsonKey(name: 'OwnerId') required this.ownerId, @JsonKey(name: 'CategoryId') required this.categoryId, @JsonKey(name: 'SubcategoryId') required this.subcategoryId, @JsonKey(name: 'PickupLocationId') required this.pickupLocationId}): _imagesUrl = imagesUrl;
  factory _ListingResponse.fromJson(Map<String, dynamic> json) => _$ListingResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Title') final  String title;
@override@JsonKey(name: 'Description') final  String description;
@override@JsonKey(name: 'Price') final  double price;
@override@JsonKey(name: 'Status') final  ListingStatus status;
@override@JsonKey(name: 'PrimaryImageUrl') final  String? primaryImageUrl;
 final  List<String>? _imagesUrl;
@override@JsonKey(name: 'ImagesUrl') List<String>? get imagesUrl {
  final value = _imagesUrl;
  if (value == null) return null;
  if (_imagesUrl is EqualUnmodifiableListView) return _imagesUrl;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'CreatedAt') final  DateTime createdAt;
@override@JsonKey(name: 'UpdatedAt') final  DateTime? updatedAt;
@override@JsonKey(name: 'OwnerId') final  String ownerId;
@override@JsonKey(name: 'CategoryId') final  String categoryId;
@override@JsonKey(name: 'SubcategoryId') final  String subcategoryId;
@override@JsonKey(name: 'PickupLocationId') final  String pickupLocationId;

/// Create a copy of ListingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingResponseCopyWith<_ListingResponse> get copyWith => __$ListingResponseCopyWithImpl<_ListingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.primaryImageUrl, primaryImageUrl) || other.primaryImageUrl == primaryImageUrl)&&const DeepCollectionEquality().equals(other._imagesUrl, _imagesUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.pickupLocationId, pickupLocationId) || other.pickupLocationId == pickupLocationId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,status,primaryImageUrl,const DeepCollectionEquality().hash(_imagesUrl),createdAt,updatedAt,ownerId,categoryId,subcategoryId,pickupLocationId);

@override
String toString() {
  return 'ListingResponse(id: $id, title: $title, description: $description, price: $price, status: $status, primaryImageUrl: $primaryImageUrl, imagesUrl: $imagesUrl, createdAt: $createdAt, updatedAt: $updatedAt, ownerId: $ownerId, categoryId: $categoryId, subcategoryId: $subcategoryId, pickupLocationId: $pickupLocationId)';
}


}

/// @nodoc
abstract mixin class _$ListingResponseCopyWith<$Res> implements $ListingResponseCopyWith<$Res> {
  factory _$ListingResponseCopyWith(_ListingResponse value, $Res Function(_ListingResponse) _then) = __$ListingResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Title') String title,@JsonKey(name: 'Description') String description,@JsonKey(name: 'Price') double price,@JsonKey(name: 'Status') ListingStatus status,@JsonKey(name: 'PrimaryImageUrl') String? primaryImageUrl,@JsonKey(name: 'ImagesUrl') List<String>? imagesUrl,@JsonKey(name: 'CreatedAt') DateTime createdAt,@JsonKey(name: 'UpdatedAt') DateTime? updatedAt,@JsonKey(name: 'OwnerId') String ownerId,@JsonKey(name: 'CategoryId') String categoryId,@JsonKey(name: 'SubcategoryId') String subcategoryId,@JsonKey(name: 'PickupLocationId') String pickupLocationId
});




}
/// @nodoc
class __$ListingResponseCopyWithImpl<$Res>
    implements _$ListingResponseCopyWith<$Res> {
  __$ListingResponseCopyWithImpl(this._self, this._then);

  final _ListingResponse _self;
  final $Res Function(_ListingResponse) _then;

/// Create a copy of ListingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? status = null,Object? primaryImageUrl = freezed,Object? imagesUrl = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? ownerId = null,Object? categoryId = null,Object? subcategoryId = null,Object? pickupLocationId = null,}) {
  return _then(_ListingResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListingStatus,primaryImageUrl: freezed == primaryImageUrl ? _self.primaryImageUrl : primaryImageUrl // ignore: cast_nullable_to_non_nullable
as String?,imagesUrl: freezed == imagesUrl ? _self._imagesUrl : imagesUrl // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,pickupLocationId: null == pickupLocationId ? _self.pickupLocationId : pickupLocationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
