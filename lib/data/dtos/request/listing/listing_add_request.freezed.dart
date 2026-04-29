// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_add_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListingAddRequest {

@JsonKey(name: 'Title') String get title;@JsonKey(name: 'Description') String get description;@JsonKey(name: 'Price') double get price;@JsonKey(name: 'PrimaryImageUrl') String? get primaryImageUrl;@JsonKey(name: 'ImagesUrl') List<String>? get imagesUrl;@JsonKey(name: 'CategoryId') String get categoryId;@JsonKey(name: 'SubcategoryId') String get subcategoryId;@JsonKey(name: 'PickupLocationId') String get pickupLocationId;@JsonKey(name: 'Name') String get name;@JsonKey(name: 'PhoneNumber') String get phoneNumber;@JsonKey(name: 'IsPriceNegotiable') bool get isPriceNegotiable;@JsonKey(name: 'ContactMethod') ContactMethod get contactMethod;@JsonKey(name: 'ListingDetails') dynamic get listingDetails;
/// Create a copy of ListingAddRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingAddRequestCopyWith<ListingAddRequest> get copyWith => _$ListingAddRequestCopyWithImpl<ListingAddRequest>(this as ListingAddRequest, _$identity);

  /// Serializes this ListingAddRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingAddRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.primaryImageUrl, primaryImageUrl) || other.primaryImageUrl == primaryImageUrl)&&const DeepCollectionEquality().equals(other.imagesUrl, imagesUrl)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.pickupLocationId, pickupLocationId) || other.pickupLocationId == pickupLocationId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&const DeepCollectionEquality().equals(other.listingDetails, listingDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,price,primaryImageUrl,const DeepCollectionEquality().hash(imagesUrl),categoryId,subcategoryId,pickupLocationId,name,phoneNumber,isPriceNegotiable,contactMethod,const DeepCollectionEquality().hash(listingDetails));

@override
String toString() {
  return 'ListingAddRequest(title: $title, description: $description, price: $price, primaryImageUrl: $primaryImageUrl, imagesUrl: $imagesUrl, categoryId: $categoryId, subcategoryId: $subcategoryId, pickupLocationId: $pickupLocationId, name: $name, phoneNumber: $phoneNumber, isPriceNegotiable: $isPriceNegotiable, contactMethod: $contactMethod, listingDetails: $listingDetails)';
}


}

/// @nodoc
abstract mixin class $ListingAddRequestCopyWith<$Res>  {
  factory $ListingAddRequestCopyWith(ListingAddRequest value, $Res Function(ListingAddRequest) _then) = _$ListingAddRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Title') String title,@JsonKey(name: 'Description') String description,@JsonKey(name: 'Price') double price,@JsonKey(name: 'PrimaryImageUrl') String? primaryImageUrl,@JsonKey(name: 'ImagesUrl') List<String>? imagesUrl,@JsonKey(name: 'CategoryId') String categoryId,@JsonKey(name: 'SubcategoryId') String subcategoryId,@JsonKey(name: 'PickupLocationId') String pickupLocationId,@JsonKey(name: 'Name') String name,@JsonKey(name: 'PhoneNumber') String phoneNumber,@JsonKey(name: 'IsPriceNegotiable') bool isPriceNegotiable,@JsonKey(name: 'ContactMethod') ContactMethod contactMethod,@JsonKey(name: 'ListingDetails') dynamic listingDetails
});




}
/// @nodoc
class _$ListingAddRequestCopyWithImpl<$Res>
    implements $ListingAddRequestCopyWith<$Res> {
  _$ListingAddRequestCopyWithImpl(this._self, this._then);

  final ListingAddRequest _self;
  final $Res Function(ListingAddRequest) _then;

/// Create a copy of ListingAddRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,Object? price = null,Object? primaryImageUrl = freezed,Object? imagesUrl = freezed,Object? categoryId = null,Object? subcategoryId = null,Object? pickupLocationId = null,Object? name = null,Object? phoneNumber = null,Object? isPriceNegotiable = null,Object? contactMethod = null,Object? listingDetails = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,primaryImageUrl: freezed == primaryImageUrl ? _self.primaryImageUrl : primaryImageUrl // ignore: cast_nullable_to_non_nullable
as String?,imagesUrl: freezed == imagesUrl ? _self.imagesUrl : imagesUrl // ignore: cast_nullable_to_non_nullable
as List<String>?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,pickupLocationId: null == pickupLocationId ? _self.pickupLocationId : pickupLocationId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: null == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool,contactMethod: null == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as ContactMethod,listingDetails: freezed == listingDetails ? _self.listingDetails : listingDetails // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingAddRequest].
extension ListingAddRequestPatterns on ListingAddRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingAddRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingAddRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingAddRequest value)  $default,){
final _that = this;
switch (_that) {
case _ListingAddRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingAddRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ListingAddRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Title')  String title, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Price')  double price, @JsonKey(name: 'PrimaryImageUrl')  String? primaryImageUrl, @JsonKey(name: 'ImagesUrl')  List<String>? imagesUrl, @JsonKey(name: 'CategoryId')  String categoryId, @JsonKey(name: 'SubcategoryId')  String subcategoryId, @JsonKey(name: 'PickupLocationId')  String pickupLocationId, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'PhoneNumber')  String phoneNumber, @JsonKey(name: 'IsPriceNegotiable')  bool isPriceNegotiable, @JsonKey(name: 'ContactMethod')  ContactMethod contactMethod, @JsonKey(name: 'ListingDetails')  dynamic listingDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingAddRequest() when $default != null:
return $default(_that.title,_that.description,_that.price,_that.primaryImageUrl,_that.imagesUrl,_that.categoryId,_that.subcategoryId,_that.pickupLocationId,_that.name,_that.phoneNumber,_that.isPriceNegotiable,_that.contactMethod,_that.listingDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Title')  String title, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Price')  double price, @JsonKey(name: 'PrimaryImageUrl')  String? primaryImageUrl, @JsonKey(name: 'ImagesUrl')  List<String>? imagesUrl, @JsonKey(name: 'CategoryId')  String categoryId, @JsonKey(name: 'SubcategoryId')  String subcategoryId, @JsonKey(name: 'PickupLocationId')  String pickupLocationId, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'PhoneNumber')  String phoneNumber, @JsonKey(name: 'IsPriceNegotiable')  bool isPriceNegotiable, @JsonKey(name: 'ContactMethod')  ContactMethod contactMethod, @JsonKey(name: 'ListingDetails')  dynamic listingDetails)  $default,) {final _that = this;
switch (_that) {
case _ListingAddRequest():
return $default(_that.title,_that.description,_that.price,_that.primaryImageUrl,_that.imagesUrl,_that.categoryId,_that.subcategoryId,_that.pickupLocationId,_that.name,_that.phoneNumber,_that.isPriceNegotiable,_that.contactMethod,_that.listingDetails);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Title')  String title, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Price')  double price, @JsonKey(name: 'PrimaryImageUrl')  String? primaryImageUrl, @JsonKey(name: 'ImagesUrl')  List<String>? imagesUrl, @JsonKey(name: 'CategoryId')  String categoryId, @JsonKey(name: 'SubcategoryId')  String subcategoryId, @JsonKey(name: 'PickupLocationId')  String pickupLocationId, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'PhoneNumber')  String phoneNumber, @JsonKey(name: 'IsPriceNegotiable')  bool isPriceNegotiable, @JsonKey(name: 'ContactMethod')  ContactMethod contactMethod, @JsonKey(name: 'ListingDetails')  dynamic listingDetails)?  $default,) {final _that = this;
switch (_that) {
case _ListingAddRequest() when $default != null:
return $default(_that.title,_that.description,_that.price,_that.primaryImageUrl,_that.imagesUrl,_that.categoryId,_that.subcategoryId,_that.pickupLocationId,_that.name,_that.phoneNumber,_that.isPriceNegotiable,_that.contactMethod,_that.listingDetails);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingAddRequest implements ListingAddRequest {
  const _ListingAddRequest({@JsonKey(name: 'Title') required this.title, @JsonKey(name: 'Description') required this.description, @JsonKey(name: 'Price') required this.price, @JsonKey(name: 'PrimaryImageUrl') this.primaryImageUrl, @JsonKey(name: 'ImagesUrl') final  List<String>? imagesUrl, @JsonKey(name: 'CategoryId') required this.categoryId, @JsonKey(name: 'SubcategoryId') required this.subcategoryId, @JsonKey(name: 'PickupLocationId') required this.pickupLocationId, @JsonKey(name: 'Name') required this.name, @JsonKey(name: 'PhoneNumber') required this.phoneNumber, @JsonKey(name: 'IsPriceNegotiable') this.isPriceNegotiable = false, @JsonKey(name: 'ContactMethod') required this.contactMethod, @JsonKey(name: 'ListingDetails') this.listingDetails}): _imagesUrl = imagesUrl;
  factory _ListingAddRequest.fromJson(Map<String, dynamic> json) => _$ListingAddRequestFromJson(json);

@override@JsonKey(name: 'Title') final  String title;
@override@JsonKey(name: 'Description') final  String description;
@override@JsonKey(name: 'Price') final  double price;
@override@JsonKey(name: 'PrimaryImageUrl') final  String? primaryImageUrl;
 final  List<String>? _imagesUrl;
@override@JsonKey(name: 'ImagesUrl') List<String>? get imagesUrl {
  final value = _imagesUrl;
  if (value == null) return null;
  if (_imagesUrl is EqualUnmodifiableListView) return _imagesUrl;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'CategoryId') final  String categoryId;
@override@JsonKey(name: 'SubcategoryId') final  String subcategoryId;
@override@JsonKey(name: 'PickupLocationId') final  String pickupLocationId;
@override@JsonKey(name: 'Name') final  String name;
@override@JsonKey(name: 'PhoneNumber') final  String phoneNumber;
@override@JsonKey(name: 'IsPriceNegotiable') final  bool isPriceNegotiable;
@override@JsonKey(name: 'ContactMethod') final  ContactMethod contactMethod;
@override@JsonKey(name: 'ListingDetails') final  dynamic listingDetails;

/// Create a copy of ListingAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingAddRequestCopyWith<_ListingAddRequest> get copyWith => __$ListingAddRequestCopyWithImpl<_ListingAddRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingAddRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingAddRequest&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.primaryImageUrl, primaryImageUrl) || other.primaryImageUrl == primaryImageUrl)&&const DeepCollectionEquality().equals(other._imagesUrl, _imagesUrl)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.subcategoryId, subcategoryId) || other.subcategoryId == subcategoryId)&&(identical(other.pickupLocationId, pickupLocationId) || other.pickupLocationId == pickupLocationId)&&(identical(other.name, name) || other.name == name)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&const DeepCollectionEquality().equals(other.listingDetails, listingDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,price,primaryImageUrl,const DeepCollectionEquality().hash(_imagesUrl),categoryId,subcategoryId,pickupLocationId,name,phoneNumber,isPriceNegotiable,contactMethod,const DeepCollectionEquality().hash(listingDetails));

@override
String toString() {
  return 'ListingAddRequest(title: $title, description: $description, price: $price, primaryImageUrl: $primaryImageUrl, imagesUrl: $imagesUrl, categoryId: $categoryId, subcategoryId: $subcategoryId, pickupLocationId: $pickupLocationId, name: $name, phoneNumber: $phoneNumber, isPriceNegotiable: $isPriceNegotiable, contactMethod: $contactMethod, listingDetails: $listingDetails)';
}


}

/// @nodoc
abstract mixin class _$ListingAddRequestCopyWith<$Res> implements $ListingAddRequestCopyWith<$Res> {
  factory _$ListingAddRequestCopyWith(_ListingAddRequest value, $Res Function(_ListingAddRequest) _then) = __$ListingAddRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Title') String title,@JsonKey(name: 'Description') String description,@JsonKey(name: 'Price') double price,@JsonKey(name: 'PrimaryImageUrl') String? primaryImageUrl,@JsonKey(name: 'ImagesUrl') List<String>? imagesUrl,@JsonKey(name: 'CategoryId') String categoryId,@JsonKey(name: 'SubcategoryId') String subcategoryId,@JsonKey(name: 'PickupLocationId') String pickupLocationId,@JsonKey(name: 'Name') String name,@JsonKey(name: 'PhoneNumber') String phoneNumber,@JsonKey(name: 'IsPriceNegotiable') bool isPriceNegotiable,@JsonKey(name: 'ContactMethod') ContactMethod contactMethod,@JsonKey(name: 'ListingDetails') dynamic listingDetails
});




}
/// @nodoc
class __$ListingAddRequestCopyWithImpl<$Res>
    implements _$ListingAddRequestCopyWith<$Res> {
  __$ListingAddRequestCopyWithImpl(this._self, this._then);

  final _ListingAddRequest _self;
  final $Res Function(_ListingAddRequest) _then;

/// Create a copy of ListingAddRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? price = null,Object? primaryImageUrl = freezed,Object? imagesUrl = freezed,Object? categoryId = null,Object? subcategoryId = null,Object? pickupLocationId = null,Object? name = null,Object? phoneNumber = null,Object? isPriceNegotiable = null,Object? contactMethod = null,Object? listingDetails = freezed,}) {
  return _then(_ListingAddRequest(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,primaryImageUrl: freezed == primaryImageUrl ? _self.primaryImageUrl : primaryImageUrl // ignore: cast_nullable_to_non_nullable
as String?,imagesUrl: freezed == imagesUrl ? _self._imagesUrl : imagesUrl // ignore: cast_nullable_to_non_nullable
as List<String>?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as String,subcategoryId: null == subcategoryId ? _self.subcategoryId : subcategoryId // ignore: cast_nullable_to_non_nullable
as String,pickupLocationId: null == pickupLocationId ? _self.pickupLocationId : pickupLocationId // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: null == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool,contactMethod: null == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as ContactMethod,listingDetails: freezed == listingDetails ? _self.listingDetails : listingDetails // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
