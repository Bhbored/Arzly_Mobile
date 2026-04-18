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

 String get id; String get ownerId; String get title; String get description; String? get priceOrType; ListingStatus get status; String? get primaryImageUrl; String get locationHint; DateTime get createdAt; Category get category;
/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingCopyWith<Listing> get copyWith => _$ListingCopyWithImpl<Listing>(this as Listing, _$identity);

  /// Serializes this Listing to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Listing&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priceOrType, priceOrType) || other.priceOrType == priceOrType)&&(identical(other.status, status) || other.status == status)&&(identical(other.primaryImageUrl, primaryImageUrl) || other.primaryImageUrl == primaryImageUrl)&&(identical(other.locationHint, locationHint) || other.locationHint == locationHint)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ownerId,title,description,priceOrType,status,primaryImageUrl,locationHint,createdAt,category);

@override
String toString() {
  return 'Listing(id: $id, ownerId: $ownerId, title: $title, description: $description, priceOrType: $priceOrType, status: $status, primaryImageUrl: $primaryImageUrl, locationHint: $locationHint, createdAt: $createdAt, category: $category)';
}


}

/// @nodoc
abstract mixin class $ListingCopyWith<$Res>  {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) _then) = _$ListingCopyWithImpl;
@useResult
$Res call({
 String id, String ownerId, String title, String description, String? priceOrType, ListingStatus status, String? primaryImageUrl, String locationHint, DateTime createdAt, Category category
});


$CategoryCopyWith<$Res> get category;

}
/// @nodoc
class _$ListingCopyWithImpl<$Res>
    implements $ListingCopyWith<$Res> {
  _$ListingCopyWithImpl(this._self, this._then);

  final Listing _self;
  final $Res Function(Listing) _then;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? ownerId = null,Object? title = null,Object? description = null,Object? priceOrType = freezed,Object? status = null,Object? primaryImageUrl = freezed,Object? locationHint = null,Object? createdAt = null,Object? category = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,priceOrType: freezed == priceOrType ? _self.priceOrType : priceOrType // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListingStatus,primaryImageUrl: freezed == primaryImageUrl ? _self.primaryImageUrl : primaryImageUrl // ignore: cast_nullable_to_non_nullable
as String?,locationHint: null == locationHint ? _self.locationHint : locationHint // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,
  ));
}
/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res> get category {
  
  return $CategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String ownerId,  String title,  String description,  String? priceOrType,  ListingStatus status,  String? primaryImageUrl,  String locationHint,  DateTime createdAt,  Category category)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Listing() when $default != null:
return $default(_that.id,_that.ownerId,_that.title,_that.description,_that.priceOrType,_that.status,_that.primaryImageUrl,_that.locationHint,_that.createdAt,_that.category);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String ownerId,  String title,  String description,  String? priceOrType,  ListingStatus status,  String? primaryImageUrl,  String locationHint,  DateTime createdAt,  Category category)  $default,) {final _that = this;
switch (_that) {
case _Listing():
return $default(_that.id,_that.ownerId,_that.title,_that.description,_that.priceOrType,_that.status,_that.primaryImageUrl,_that.locationHint,_that.createdAt,_that.category);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String ownerId,  String title,  String description,  String? priceOrType,  ListingStatus status,  String? primaryImageUrl,  String locationHint,  DateTime createdAt,  Category category)?  $default,) {final _that = this;
switch (_that) {
case _Listing() when $default != null:
return $default(_that.id,_that.ownerId,_that.title,_that.description,_that.priceOrType,_that.status,_that.primaryImageUrl,_that.locationHint,_that.createdAt,_that.category);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Listing implements Listing {
  const _Listing({required this.id, required this.ownerId, required this.title, required this.description, this.priceOrType, required this.status, this.primaryImageUrl, required this.locationHint, required this.createdAt, required this.category});
  factory _Listing.fromJson(Map<String, dynamic> json) => _$ListingFromJson(json);

@override final  String id;
@override final  String ownerId;
@override final  String title;
@override final  String description;
@override final  String? priceOrType;
@override final  ListingStatus status;
@override final  String? primaryImageUrl;
@override final  String locationHint;
@override final  DateTime createdAt;
@override final  Category category;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingCopyWith<_Listing> get copyWith => __$ListingCopyWithImpl<_Listing>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Listing&&(identical(other.id, id) || other.id == id)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priceOrType, priceOrType) || other.priceOrType == priceOrType)&&(identical(other.status, status) || other.status == status)&&(identical(other.primaryImageUrl, primaryImageUrl) || other.primaryImageUrl == primaryImageUrl)&&(identical(other.locationHint, locationHint) || other.locationHint == locationHint)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.category, category) || other.category == category));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,ownerId,title,description,priceOrType,status,primaryImageUrl,locationHint,createdAt,category);

@override
String toString() {
  return 'Listing(id: $id, ownerId: $ownerId, title: $title, description: $description, priceOrType: $priceOrType, status: $status, primaryImageUrl: $primaryImageUrl, locationHint: $locationHint, createdAt: $createdAt, category: $category)';
}


}

/// @nodoc
abstract mixin class _$ListingCopyWith<$Res> implements $ListingCopyWith<$Res> {
  factory _$ListingCopyWith(_Listing value, $Res Function(_Listing) _then) = __$ListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String ownerId, String title, String description, String? priceOrType, ListingStatus status, String? primaryImageUrl, String locationHint, DateTime createdAt, Category category
});


@override $CategoryCopyWith<$Res> get category;

}
/// @nodoc
class __$ListingCopyWithImpl<$Res>
    implements _$ListingCopyWith<$Res> {
  __$ListingCopyWithImpl(this._self, this._then);

  final _Listing _self;
  final $Res Function(_Listing) _then;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? ownerId = null,Object? title = null,Object? description = null,Object? priceOrType = freezed,Object? status = null,Object? primaryImageUrl = freezed,Object? locationHint = null,Object? createdAt = null,Object? category = null,}) {
  return _then(_Listing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,priceOrType: freezed == priceOrType ? _self.priceOrType : priceOrType // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ListingStatus,primaryImageUrl: freezed == primaryImageUrl ? _self.primaryImageUrl : primaryImageUrl // ignore: cast_nullable_to_non_nullable
as String?,locationHint: null == locationHint ? _self.locationHint : locationHint // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as Category,
  ));
}

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryCopyWith<$Res> get category {
  
  return $CategoryCopyWith<$Res>(_self.category, (value) {
    return _then(_self.copyWith(category: value));
  });
}
}

// dart format on
