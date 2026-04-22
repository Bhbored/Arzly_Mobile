// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Listing {

 String get id; String get title; String get description; double get price; ListingStatus get status; String? get primaryImageUrl; List<String>? get imagesUrl; DateTime get createdAt; DateTime? get updatedAt; String get ownerId; String get categoryId; String get subcategoryId; String? get subcategoryOptionsId; String get pickupLocationId;
/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingCopyWith<Listing> get copyWith => _$ListingCopyWithImpl<Listing>(this as Listing, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Listing&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.primaryImageUrl, primaryImageUrl) || other.primaryImageUrl == primaryImageUrl)&&const DeepCollectionEquality().equals(other.imagesUrl, imagesUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.subcategoryOptionsId, subcategoryOptionsId) || other.subcategoryOptionsId == subcategoryOptionsId)&&(identical(other.pickupLocationId, pickupLocationId) || other.pickupLocationId == pickupLocationId));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,status,primaryImageUrl,const DeepCollectionEquality().hash(imagesUrl),createdAt,updatedAt,ownerId,categoryId,subcategoryId,subcategoryOptionsId,pickupLocationId);

@override
String toString() {
  return 'Listing(id: $id, title: $title, description: $description, price: $price, status: $status, primaryImageUrl: $primaryImageUrl, imagesUrl: $imagesUrl, createdAt: $createdAt, updatedAt: $updatedAt, ownerId: $ownerId, categoryId: $categoryId, subcategoryId: $subcategoryId, subcategoryOptionsId: $subcategoryOptionsId, pickupLocationId: $pickupLocationId)';
}


}

/// @nodoc
abstract mixin class $ListingCopyWith<$Res>  {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) _then) = _$ListingCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, double price, ListingStatus status, String? primaryImageUrl, List<String>? imagesUrl, DateTime createdAt, DateTime? updatedAt, String ownerId, String categoryId, String subcategoryId, String? subcategoryOptionsId, String pickupLocationId
});




}
/// @nodoc
class _$ListingCopyWithImpl<$Res>
    implements $ListingCopyWith<$Res> {
  _$ListingCopyWithImpl(this._self, this._then);

  final Listing _self;
  final $Res Function(Listing) _then;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? status = null,Object? primaryImageUrl = freezed,Object? imagesUrl = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? ownerId = null,Object? categoryId = null,Object? subcategoryId = null,Object? subcategoryOptionsId = freezed,Object? pickupLocationId = null,}) {
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
as String,subcategoryOptionsId: freezed == subcategoryOptionsId ? _self.subcategoryOptionsId : subcategoryOptionsId // ignore: cast_nullable_to_non_nullable
as String?,pickupLocationId: null == pickupLocationId ? _self.pickupLocationId : pickupLocationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Listing].
extension ListingPatterns on Listing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Listing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Listing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Listing value)  $default,){
final _that = this;
switch (_that) {
case _Listing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Listing value)?  $default,){
final _that = this;
switch (_that) {
case _Listing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  double price,  ListingStatus status,  String? primaryImageUrl,  List<String>? imagesUrl,  DateTime createdAt,  DateTime? updatedAt,  String ownerId,  String categoryId,  String subcategoryId,  String? subcategoryOptionsId,  String pickupLocationId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Listing() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.status,_that.primaryImageUrl,_that.imagesUrl,_that.createdAt,_that.updatedAt,_that.ownerId,_that.categoryId,_that.subcategoryId,_that.subcategoryOptionsId,_that.pickupLocationId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  double price,  ListingStatus status,  String? primaryImageUrl,  List<String>? imagesUrl,  DateTime createdAt,  DateTime? updatedAt,  String ownerId,  String categoryId,  String subcategoryId,  String? subcategoryOptionsId,  String pickupLocationId)  $default,) {final _that = this;
switch (_that) {
case _Listing():
return $default(_that.id,_that.title,_that.description,_that.price,_that.status,_that.primaryImageUrl,_that.imagesUrl,_that.createdAt,_that.updatedAt,_that.ownerId,_that.categoryId,_that.subcategoryId,_that.subcategoryOptionsId,_that.pickupLocationId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  double price,  ListingStatus status,  String? primaryImageUrl,  List<String>? imagesUrl,  DateTime createdAt,  DateTime? updatedAt,  String ownerId,  String categoryId,  String subcategoryId,  String? subcategoryOptionsId,  String pickupLocationId)?  $default,) {final _that = this;
switch (_that) {
case _Listing() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.status,_that.primaryImageUrl,_that.imagesUrl,_that.createdAt,_that.updatedAt,_that.ownerId,_that.categoryId,_that.subcategoryId,_that.subcategoryOptionsId,_that.pickupLocationId);case _:
  return null;

}
}

}

/// @nodoc


class _Listing implements Listing {
  const _Listing({required this.id, required this.title, required this.description, required this.price, required this.status, this.primaryImageUrl, final  List<String>? imagesUrl, required this.createdAt, this.updatedAt, required this.ownerId, required this.categoryId, required this.subcategoryId, this.subcategoryOptionsId, required this.pickupLocationId}): _imagesUrl = imagesUrl;
  

@override final  String id;
@override final  String title;
@override final  String description;
@override final  double price;
@override final  ListingStatus status;
@override final  String? primaryImageUrl;
 final  List<String>? _imagesUrl;
@override List<String>? get imagesUrl {
  final value = _imagesUrl;
  if (value == null) return null;
  if (_imagesUrl is EqualUnmodifiableListView) return _imagesUrl;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime createdAt;
@override final  DateTime? updatedAt;
@override final  String ownerId;
@override final  String categoryId;
@override final  String subcategoryId;
@override final  String? subcategoryOptionsId;
@override final  String pickupLocationId;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingCopyWith<_Listing> get copyWith => __$ListingCopyWithImpl<_Listing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Listing&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.primaryImageUrl, primaryImageUrl) || other.primaryImageUrl == primaryImageUrl)&&const DeepCollectionEquality().equals(other._imagesUrl, _imagesUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.subcategoryOptionsId, subcategoryOptionsId) || other.subcategoryOptionsId == subcategoryOptionsId)&&(identical(other.pickupLocationId, pickupLocationId) || other.pickupLocationId == pickupLocationId));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,description,price,status,primaryImageUrl,const DeepCollectionEquality().hash(_imagesUrl),createdAt,updatedAt,ownerId,categoryId,subcategoryId,subcategoryOptionsId,pickupLocationId);

@override
String toString() {
  return 'Listing(id: $id, title: $title, description: $description, price: $price, status: $status, primaryImageUrl: $primaryImageUrl, imagesUrl: $imagesUrl, createdAt: $createdAt, updatedAt: $updatedAt, ownerId: $ownerId, categoryId: $categoryId, subcategoryId: $subcategoryId, subcategoryOptionsId: $subcategoryOptionsId, pickupLocationId: $pickupLocationId)';
}


}

/// @nodoc
abstract mixin class _$ListingCopyWith<$Res> implements $ListingCopyWith<$Res> {
  factory _$ListingCopyWith(_Listing value, $Res Function(_Listing) _then) = __$ListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, double price, ListingStatus status, String? primaryImageUrl, List<String>? imagesUrl, DateTime createdAt, DateTime? updatedAt, String ownerId, String categoryId, String subcategoryId, String? subcategoryOptionsId, String pickupLocationId
});




}
/// @nodoc
class __$ListingCopyWithImpl<$Res>
    implements _$ListingCopyWith<$Res> {
  __$ListingCopyWithImpl(this._self, this._then);

  final _Listing _self;
  final $Res Function(_Listing) _then;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? status = null,Object? primaryImageUrl = freezed,Object? imagesUrl = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? ownerId = null,Object? categoryId = null,Object? subcategoryId = null,Object? subcategoryOptionsId = freezed,Object? pickupLocationId = null,}) {
  return _then(_Listing(
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
as String,subcategoryOptionsId: freezed == subcategoryOptionsId ? _self.subcategoryOptionsId : subcategoryOptionsId // ignore: cast_nullable_to_non_nullable
as String?,pickupLocationId: null == pickupLocationId ? _self.pickupLocationId : pickupLocationId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
