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

 String get id; String get title; String get description; double get price; ListingStatus get status; String? get primaryImageUrl; List<String>? get imagesUrl; DateTime get createdAt; DateTime? get updatedAt; String get name; String get phoneNumber; bool get isPriceNegotiable; bool get isPromoted; PromotionType? get promotionType; DateTime? get promotionStartDate; DateTime? get promotionEndDate; ContactMethod get contactMethod; String get ownerId; String get categoryId; String get subcategoryId; String get pickupLocationId; PickupLocation get pickupLocation; dynamic get listingDetails;
/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingCopyWith<Listing> get copyWith => _$ListingCopyWithImpl<Listing>(this as Listing, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Listing&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.primaryImageUrl, primaryImageUrl) || other.primaryImageUrl == primaryImageUrl)&&const DeepCollectionEquality().equals(other.imagesUrl, imagesUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.promotionType, promotionType) || other.promotionType == promotionType)&&(identical(other.promotionStartDate, promotionStartDate) || other.promotionStartDate == promotionStartDate)&&(identical(other.promotionEndDate, promotionEndDate) || other.promotionEndDate == promotionEndDate)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.pickupLocationId, pickupLocationId) || other.pickupLocationId == pickupLocationId)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&const DeepCollectionEquality().equals(other.listingDetails, listingDetails));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,price,status,primaryImageUrl,const DeepCollectionEquality().hash(imagesUrl),createdAt,updatedAt,name,phoneNumber,isPriceNegotiable,isPromoted,promotionType,promotionStartDate,promotionEndDate,contactMethod,ownerId,categoryId,subcategoryId,pickupLocationId,pickupLocation,const DeepCollectionEquality().hash(listingDetails)]);

@override
String toString() {
  return 'Listing(id: $id, title: $title, description: $description, price: $price, status: $status, primaryImageUrl: $primaryImageUrl, imagesUrl: $imagesUrl, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, phoneNumber: $phoneNumber, isPriceNegotiable: $isPriceNegotiable, isPromoted: $isPromoted, promotionType: $promotionType, promotionStartDate: $promotionStartDate, promotionEndDate: $promotionEndDate, contactMethod: $contactMethod, ownerId: $ownerId, categoryId: $categoryId, subcategoryId: $subcategoryId, pickupLocationId: $pickupLocationId, pickupLocation: $pickupLocation, listingDetails: $listingDetails)';
}


}

/// @nodoc
abstract mixin class $ListingCopyWith<$Res>  {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) _then) = _$ListingCopyWithImpl;
@useResult
$Res call({
 String id, String title, String description, double price, ListingStatus status, String? primaryImageUrl, List<String>? imagesUrl, DateTime createdAt, DateTime? updatedAt, String name, String phoneNumber, bool isPriceNegotiable, bool isPromoted, PromotionType? promotionType, DateTime? promotionStartDate, DateTime? promotionEndDate, ContactMethod contactMethod, String ownerId, String categoryId, String subcategoryId, String pickupLocationId, PickupLocation pickupLocation, dynamic listingDetails
});


$PickupLocationCopyWith<$Res> get pickupLocation;

}
/// @nodoc
class _$ListingCopyWithImpl<$Res>
    implements $ListingCopyWith<$Res> {
  _$ListingCopyWithImpl(this._self, this._then);

  final Listing _self;
  final $Res Function(Listing) _then;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? status = null,Object? primaryImageUrl = freezed,Object? imagesUrl = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? name = null,Object? phoneNumber = null,Object? isPriceNegotiable = null,Object? isPromoted = null,Object? promotionType = freezed,Object? promotionStartDate = freezed,Object? promotionEndDate = freezed,Object? contactMethod = null,Object? ownerId = null,Object? categoryId = null,Object? subcategoryId = null,Object? pickupLocationId = null,Object? pickupLocation = null,Object? listingDetails = freezed,}) {
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
as DateTime?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: null == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool,isPromoted: null == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool,promotionType: freezed == promotionType ? _self.promotionType : promotionType // ignore: cast_nullable_to_non_nullable
as PromotionType?,promotionStartDate: freezed == promotionStartDate ? _self.promotionStartDate : promotionStartDate // ignore: cast_nullable_to_non_nullable
as DateTime?,promotionEndDate: freezed == promotionEndDate ? _self.promotionEndDate : promotionEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,contactMethod: null == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as ContactMethod,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,pickupLocationId: null == pickupLocationId ? _self.pickupLocationId : pickupLocationId // ignore: cast_nullable_to_non_nullable
as String,pickupLocation: null == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as PickupLocation,listingDetails: freezed == listingDetails ? _self.listingDetails : listingDetails // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PickupLocationCopyWith<$Res> get pickupLocation {
  
  return $PickupLocationCopyWith<$Res>(_self.pickupLocation, (value) {
    return _then(_self.copyWith(pickupLocation: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String description,  double price,  ListingStatus status,  String? primaryImageUrl,  List<String>? imagesUrl,  DateTime createdAt,  DateTime? updatedAt,  String name,  String phoneNumber,  bool isPriceNegotiable,  bool isPromoted,  PromotionType? promotionType,  DateTime? promotionStartDate,  DateTime? promotionEndDate,  ContactMethod contactMethod,  String ownerId,  String categoryId,  String subcategoryId,  String pickupLocationId,  PickupLocation pickupLocation,  dynamic listingDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Listing() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.status,_that.primaryImageUrl,_that.imagesUrl,_that.createdAt,_that.updatedAt,_that.name,_that.phoneNumber,_that.isPriceNegotiable,_that.isPromoted,_that.promotionType,_that.promotionStartDate,_that.promotionEndDate,_that.contactMethod,_that.ownerId,_that.categoryId,_that.subcategoryId,_that.pickupLocationId,_that.pickupLocation,_that.listingDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String description,  double price,  ListingStatus status,  String? primaryImageUrl,  List<String>? imagesUrl,  DateTime createdAt,  DateTime? updatedAt,  String name,  String phoneNumber,  bool isPriceNegotiable,  bool isPromoted,  PromotionType? promotionType,  DateTime? promotionStartDate,  DateTime? promotionEndDate,  ContactMethod contactMethod,  String ownerId,  String categoryId,  String subcategoryId,  String pickupLocationId,  PickupLocation pickupLocation,  dynamic listingDetails)  $default,) {final _that = this;
switch (_that) {
case _Listing():
return $default(_that.id,_that.title,_that.description,_that.price,_that.status,_that.primaryImageUrl,_that.imagesUrl,_that.createdAt,_that.updatedAt,_that.name,_that.phoneNumber,_that.isPriceNegotiable,_that.isPromoted,_that.promotionType,_that.promotionStartDate,_that.promotionEndDate,_that.contactMethod,_that.ownerId,_that.categoryId,_that.subcategoryId,_that.pickupLocationId,_that.pickupLocation,_that.listingDetails);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String description,  double price,  ListingStatus status,  String? primaryImageUrl,  List<String>? imagesUrl,  DateTime createdAt,  DateTime? updatedAt,  String name,  String phoneNumber,  bool isPriceNegotiable,  bool isPromoted,  PromotionType? promotionType,  DateTime? promotionStartDate,  DateTime? promotionEndDate,  ContactMethod contactMethod,  String ownerId,  String categoryId,  String subcategoryId,  String pickupLocationId,  PickupLocation pickupLocation,  dynamic listingDetails)?  $default,) {final _that = this;
switch (_that) {
case _Listing() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.price,_that.status,_that.primaryImageUrl,_that.imagesUrl,_that.createdAt,_that.updatedAt,_that.name,_that.phoneNumber,_that.isPriceNegotiable,_that.isPromoted,_that.promotionType,_that.promotionStartDate,_that.promotionEndDate,_that.contactMethod,_that.ownerId,_that.categoryId,_that.subcategoryId,_that.pickupLocationId,_that.pickupLocation,_that.listingDetails);case _:
  return null;

}
}

}

/// @nodoc


class _Listing implements Listing {
  const _Listing({required this.id, required this.title, required this.description, required this.price, required this.status, this.primaryImageUrl, final  List<String>? imagesUrl, required this.createdAt, this.updatedAt, required this.name, required this.phoneNumber, this.isPriceNegotiable = false, this.isPromoted = false, this.promotionType, this.promotionStartDate, this.promotionEndDate, required this.contactMethod, required this.ownerId, required this.categoryId, required this.subcategoryId, required this.pickupLocationId, required this.pickupLocation, this.listingDetails}): _imagesUrl = imagesUrl;
  

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
@override final  String name;
@override final  String phoneNumber;
@override@JsonKey() final  bool isPriceNegotiable;
@override@JsonKey() final  bool isPromoted;
@override final  PromotionType? promotionType;
@override final  DateTime? promotionStartDate;
@override final  DateTime? promotionEndDate;
@override final  ContactMethod contactMethod;
@override final  String ownerId;
@override final  String categoryId;
@override final  String subcategoryId;
@override final  String pickupLocationId;
@override final  PickupLocation pickupLocation;
@override final  dynamic listingDetails;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingCopyWith<_Listing> get copyWith => __$ListingCopyWithImpl<_Listing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Listing&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.status, status) || other.status == status)&&(identical(other.primaryImageUrl, primaryImageUrl) || other.primaryImageUrl == primaryImageUrl)&&const DeepCollectionEquality().equals(other._imagesUrl, _imagesUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.promotionType, promotionType) || other.promotionType == promotionType)&&(identical(other.promotionStartDate, promotionStartDate) || other.promotionStartDate == promotionStartDate)&&(identical(other.promotionEndDate, promotionEndDate) || other.promotionEndDate == promotionEndDate)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.pickupLocationId, pickupLocationId) || other.pickupLocationId == pickupLocationId)&&(identical(other.pickupLocation, pickupLocation) || other.pickupLocation == pickupLocation)&&const DeepCollectionEquality().equals(other.listingDetails, listingDetails));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,price,status,primaryImageUrl,const DeepCollectionEquality().hash(_imagesUrl),createdAt,updatedAt,name,phoneNumber,isPriceNegotiable,isPromoted,promotionType,promotionStartDate,promotionEndDate,contactMethod,ownerId,categoryId,subcategoryId,pickupLocationId,pickupLocation,const DeepCollectionEquality().hash(listingDetails)]);

@override
String toString() {
  return 'Listing(id: $id, title: $title, description: $description, price: $price, status: $status, primaryImageUrl: $primaryImageUrl, imagesUrl: $imagesUrl, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, phoneNumber: $phoneNumber, isPriceNegotiable: $isPriceNegotiable, isPromoted: $isPromoted, promotionType: $promotionType, promotionStartDate: $promotionStartDate, promotionEndDate: $promotionEndDate, contactMethod: $contactMethod, ownerId: $ownerId, categoryId: $categoryId, subcategoryId: $subcategoryId, pickupLocationId: $pickupLocationId, pickupLocation: $pickupLocation, listingDetails: $listingDetails)';
}


}

/// @nodoc
abstract mixin class _$ListingCopyWith<$Res> implements $ListingCopyWith<$Res> {
  factory _$ListingCopyWith(_Listing value, $Res Function(_Listing) _then) = __$ListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String description, double price, ListingStatus status, String? primaryImageUrl, List<String>? imagesUrl, DateTime createdAt, DateTime? updatedAt, String name, String phoneNumber, bool isPriceNegotiable, bool isPromoted, PromotionType? promotionType, DateTime? promotionStartDate, DateTime? promotionEndDate, ContactMethod contactMethod, String ownerId, String categoryId, String subcategoryId, String pickupLocationId, PickupLocation pickupLocation, dynamic listingDetails
});


@override $PickupLocationCopyWith<$Res> get pickupLocation;

}
/// @nodoc
class __$ListingCopyWithImpl<$Res>
    implements _$ListingCopyWith<$Res> {
  __$ListingCopyWithImpl(this._self, this._then);

  final _Listing _self;
  final $Res Function(_Listing) _then;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = null,Object? price = null,Object? status = null,Object? primaryImageUrl = freezed,Object? imagesUrl = freezed,Object? createdAt = null,Object? updatedAt = freezed,Object? name = null,Object? phoneNumber = null,Object? isPriceNegotiable = null,Object? isPromoted = null,Object? promotionType = freezed,Object? promotionStartDate = freezed,Object? promotionEndDate = freezed,Object? contactMethod = null,Object? ownerId = null,Object? categoryId = null,Object? subcategoryId = null,Object? pickupLocationId = null,Object? pickupLocation = null,Object? listingDetails = freezed,}) {
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
as DateTime?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: null == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool,isPromoted: null == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool,promotionType: freezed == promotionType ? _self.promotionType : promotionType // ignore: cast_nullable_to_non_nullable
as PromotionType?,promotionStartDate: freezed == promotionStartDate ? _self.promotionStartDate : promotionStartDate // ignore: cast_nullable_to_non_nullable
as DateTime?,promotionEndDate: freezed == promotionEndDate ? _self.promotionEndDate : promotionEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,contactMethod: null == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as ContactMethod,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,pickupLocationId: null == pickupLocationId ? _self.pickupLocationId : pickupLocationId // ignore: cast_nullable_to_non_nullable
as String,pickupLocation: null == pickupLocation ? _self.pickupLocation : pickupLocation // ignore: cast_nullable_to_non_nullable
as PickupLocation,listingDetails: freezed == listingDetails ? _self.listingDetails : listingDetails // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PickupLocationCopyWith<$Res> get pickupLocation {
  
  return $PickupLocationCopyWith<$Res>(_self.pickupLocation, (value) {
    return _then(_self.copyWith(pickupLocation: value));
  });
}
}

// dart format on
