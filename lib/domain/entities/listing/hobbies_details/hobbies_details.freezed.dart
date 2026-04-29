// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hobbies_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HobbiesDetails {

 String? get listingId; CollectibleType? get collectibleType; HobbiesCondition? get condition; InstrumentType? get instrumentType; BookType? get bookType; BookLanguage? get bookLanguage; MovieGenre? get movieGenre; HobbyGameType? get hobbyGameType;
/// Create a copy of HobbiesDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HobbiesDetailsCopyWith<HobbiesDetails> get copyWith => _$HobbiesDetailsCopyWithImpl<HobbiesDetails>(this as HobbiesDetails, _$identity);

  /// Serializes this HobbiesDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HobbiesDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.collectibleType, collectibleType) || other.collectibleType == collectibleType)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.instrumentType, instrumentType) || other.instrumentType == instrumentType)&&(identical(other.bookType, bookType) || other.bookType == bookType)&&(identical(other.bookLanguage, bookLanguage) || other.bookLanguage == bookLanguage)&&(identical(other.movieGenre, movieGenre) || other.movieGenre == movieGenre)&&(identical(other.hobbyGameType, hobbyGameType) || other.hobbyGameType == hobbyGameType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,collectibleType,condition,instrumentType,bookType,bookLanguage,movieGenre,hobbyGameType);

@override
String toString() {
  return 'HobbiesDetails(listingId: $listingId, collectibleType: $collectibleType, condition: $condition, instrumentType: $instrumentType, bookType: $bookType, bookLanguage: $bookLanguage, movieGenre: $movieGenre, hobbyGameType: $hobbyGameType)';
}


}

/// @nodoc
abstract mixin class $HobbiesDetailsCopyWith<$Res>  {
  factory $HobbiesDetailsCopyWith(HobbiesDetails value, $Res Function(HobbiesDetails) _then) = _$HobbiesDetailsCopyWithImpl;
@useResult
$Res call({
 String? listingId, CollectibleType? collectibleType, HobbiesCondition? condition, InstrumentType? instrumentType, BookType? bookType, BookLanguage? bookLanguage, MovieGenre? movieGenre, HobbyGameType? hobbyGameType
});




}
/// @nodoc
class _$HobbiesDetailsCopyWithImpl<$Res>
    implements $HobbiesDetailsCopyWith<$Res> {
  _$HobbiesDetailsCopyWithImpl(this._self, this._then);

  final HobbiesDetails _self;
  final $Res Function(HobbiesDetails) _then;

/// Create a copy of HobbiesDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = freezed,Object? collectibleType = freezed,Object? condition = freezed,Object? instrumentType = freezed,Object? bookType = freezed,Object? bookLanguage = freezed,Object? movieGenre = freezed,Object? hobbyGameType = freezed,}) {
  return _then(_self.copyWith(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,collectibleType: freezed == collectibleType ? _self.collectibleType : collectibleType // ignore: cast_nullable_to_non_nullable
as CollectibleType?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as HobbiesCondition?,instrumentType: freezed == instrumentType ? _self.instrumentType : instrumentType // ignore: cast_nullable_to_non_nullable
as InstrumentType?,bookType: freezed == bookType ? _self.bookType : bookType // ignore: cast_nullable_to_non_nullable
as BookType?,bookLanguage: freezed == bookLanguage ? _self.bookLanguage : bookLanguage // ignore: cast_nullable_to_non_nullable
as BookLanguage?,movieGenre: freezed == movieGenre ? _self.movieGenre : movieGenre // ignore: cast_nullable_to_non_nullable
as MovieGenre?,hobbyGameType: freezed == hobbyGameType ? _self.hobbyGameType : hobbyGameType // ignore: cast_nullable_to_non_nullable
as HobbyGameType?,
  ));
}

}


/// Adds pattern-matching-related methods to [HobbiesDetails].
extension HobbiesDetailsPatterns on HobbiesDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HobbiesDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HobbiesDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HobbiesDetails value)  $default,){
final _that = this;
switch (_that) {
case _HobbiesDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HobbiesDetails value)?  $default,){
final _that = this;
switch (_that) {
case _HobbiesDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? listingId,  CollectibleType? collectibleType,  HobbiesCondition? condition,  InstrumentType? instrumentType,  BookType? bookType,  BookLanguage? bookLanguage,  MovieGenre? movieGenre,  HobbyGameType? hobbyGameType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HobbiesDetails() when $default != null:
return $default(_that.listingId,_that.collectibleType,_that.condition,_that.instrumentType,_that.bookType,_that.bookLanguage,_that.movieGenre,_that.hobbyGameType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? listingId,  CollectibleType? collectibleType,  HobbiesCondition? condition,  InstrumentType? instrumentType,  BookType? bookType,  BookLanguage? bookLanguage,  MovieGenre? movieGenre,  HobbyGameType? hobbyGameType)  $default,) {final _that = this;
switch (_that) {
case _HobbiesDetails():
return $default(_that.listingId,_that.collectibleType,_that.condition,_that.instrumentType,_that.bookType,_that.bookLanguage,_that.movieGenre,_that.hobbyGameType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? listingId,  CollectibleType? collectibleType,  HobbiesCondition? condition,  InstrumentType? instrumentType,  BookType? bookType,  BookLanguage? bookLanguage,  MovieGenre? movieGenre,  HobbyGameType? hobbyGameType)?  $default,) {final _that = this;
switch (_that) {
case _HobbiesDetails() when $default != null:
return $default(_that.listingId,_that.collectibleType,_that.condition,_that.instrumentType,_that.bookType,_that.bookLanguage,_that.movieGenre,_that.hobbyGameType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HobbiesDetails implements HobbiesDetails {
  const _HobbiesDetails({this.listingId, this.collectibleType, this.condition, this.instrumentType, this.bookType, this.bookLanguage, this.movieGenre, this.hobbyGameType});
  factory _HobbiesDetails.fromJson(Map<String, dynamic> json) => _$HobbiesDetailsFromJson(json);

@override final  String? listingId;
@override final  CollectibleType? collectibleType;
@override final  HobbiesCondition? condition;
@override final  InstrumentType? instrumentType;
@override final  BookType? bookType;
@override final  BookLanguage? bookLanguage;
@override final  MovieGenre? movieGenre;
@override final  HobbyGameType? hobbyGameType;

/// Create a copy of HobbiesDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HobbiesDetailsCopyWith<_HobbiesDetails> get copyWith => __$HobbiesDetailsCopyWithImpl<_HobbiesDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HobbiesDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HobbiesDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.collectibleType, collectibleType) || other.collectibleType == collectibleType)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.instrumentType, instrumentType) || other.instrumentType == instrumentType)&&(identical(other.bookType, bookType) || other.bookType == bookType)&&(identical(other.bookLanguage, bookLanguage) || other.bookLanguage == bookLanguage)&&(identical(other.movieGenre, movieGenre) || other.movieGenre == movieGenre)&&(identical(other.hobbyGameType, hobbyGameType) || other.hobbyGameType == hobbyGameType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,collectibleType,condition,instrumentType,bookType,bookLanguage,movieGenre,hobbyGameType);

@override
String toString() {
  return 'HobbiesDetails(listingId: $listingId, collectibleType: $collectibleType, condition: $condition, instrumentType: $instrumentType, bookType: $bookType, bookLanguage: $bookLanguage, movieGenre: $movieGenre, hobbyGameType: $hobbyGameType)';
}


}

/// @nodoc
abstract mixin class _$HobbiesDetailsCopyWith<$Res> implements $HobbiesDetailsCopyWith<$Res> {
  factory _$HobbiesDetailsCopyWith(_HobbiesDetails value, $Res Function(_HobbiesDetails) _then) = __$HobbiesDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? listingId, CollectibleType? collectibleType, HobbiesCondition? condition, InstrumentType? instrumentType, BookType? bookType, BookLanguage? bookLanguage, MovieGenre? movieGenre, HobbyGameType? hobbyGameType
});




}
/// @nodoc
class __$HobbiesDetailsCopyWithImpl<$Res>
    implements _$HobbiesDetailsCopyWith<$Res> {
  __$HobbiesDetailsCopyWithImpl(this._self, this._then);

  final _HobbiesDetails _self;
  final $Res Function(_HobbiesDetails) _then;

/// Create a copy of HobbiesDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = freezed,Object? collectibleType = freezed,Object? condition = freezed,Object? instrumentType = freezed,Object? bookType = freezed,Object? bookLanguage = freezed,Object? movieGenre = freezed,Object? hobbyGameType = freezed,}) {
  return _then(_HobbiesDetails(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,collectibleType: freezed == collectibleType ? _self.collectibleType : collectibleType // ignore: cast_nullable_to_non_nullable
as CollectibleType?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as HobbiesCondition?,instrumentType: freezed == instrumentType ? _self.instrumentType : instrumentType // ignore: cast_nullable_to_non_nullable
as InstrumentType?,bookType: freezed == bookType ? _self.bookType : bookType // ignore: cast_nullable_to_non_nullable
as BookType?,bookLanguage: freezed == bookLanguage ? _self.bookLanguage : bookLanguage // ignore: cast_nullable_to_non_nullable
as BookLanguage?,movieGenre: freezed == movieGenre ? _self.movieGenre : movieGenre // ignore: cast_nullable_to_non_nullable
as MovieGenre?,hobbyGameType: freezed == hobbyGameType ? _self.hobbyGameType : hobbyGameType // ignore: cast_nullable_to_non_nullable
as HobbyGameType?,
  ));
}


}

// dart format on
