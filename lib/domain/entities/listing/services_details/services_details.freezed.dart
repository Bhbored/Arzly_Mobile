// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ServicesDetails {

 String? get listingId; ServiceType? get serviceType; HomeServiceType? get homeServiceType; PersonalServiceType? get personalServiceType; ProfessionalServiceType? get professionalServiceType; EventServiceType? get eventServiceType; TransportServiceType? get transportServiceType; OtherServiceType? get otherServiceType;
/// Create a copy of ServicesDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServicesDetailsCopyWith<ServicesDetails> get copyWith => _$ServicesDetailsCopyWithImpl<ServicesDetails>(this as ServicesDetails, _$identity);

  /// Serializes this ServicesDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServicesDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.serviceType, serviceType) || other.serviceType == serviceType)&&(identical(other.homeServiceType, homeServiceType) || other.homeServiceType == homeServiceType)&&(identical(other.personalServiceType, personalServiceType) || other.personalServiceType == personalServiceType)&&(identical(other.professionalServiceType, professionalServiceType) || other.professionalServiceType == professionalServiceType)&&(identical(other.eventServiceType, eventServiceType) || other.eventServiceType == eventServiceType)&&(identical(other.transportServiceType, transportServiceType) || other.transportServiceType == transportServiceType)&&(identical(other.otherServiceType, otherServiceType) || other.otherServiceType == otherServiceType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,serviceType,homeServiceType,personalServiceType,professionalServiceType,eventServiceType,transportServiceType,otherServiceType);

@override
String toString() {
  return 'ServicesDetails(listingId: $listingId, serviceType: $serviceType, homeServiceType: $homeServiceType, personalServiceType: $personalServiceType, professionalServiceType: $professionalServiceType, eventServiceType: $eventServiceType, transportServiceType: $transportServiceType, otherServiceType: $otherServiceType)';
}


}

/// @nodoc
abstract mixin class $ServicesDetailsCopyWith<$Res>  {
  factory $ServicesDetailsCopyWith(ServicesDetails value, $Res Function(ServicesDetails) _then) = _$ServicesDetailsCopyWithImpl;
@useResult
$Res call({
 String? listingId, ServiceType? serviceType, HomeServiceType? homeServiceType, PersonalServiceType? personalServiceType, ProfessionalServiceType? professionalServiceType, EventServiceType? eventServiceType, TransportServiceType? transportServiceType, OtherServiceType? otherServiceType
});




}
/// @nodoc
class _$ServicesDetailsCopyWithImpl<$Res>
    implements $ServicesDetailsCopyWith<$Res> {
  _$ServicesDetailsCopyWithImpl(this._self, this._then);

  final ServicesDetails _self;
  final $Res Function(ServicesDetails) _then;

/// Create a copy of ServicesDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = freezed,Object? serviceType = freezed,Object? homeServiceType = freezed,Object? personalServiceType = freezed,Object? professionalServiceType = freezed,Object? eventServiceType = freezed,Object? transportServiceType = freezed,Object? otherServiceType = freezed,}) {
  return _then(_self.copyWith(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,serviceType: freezed == serviceType ? _self.serviceType : serviceType // ignore: cast_nullable_to_non_nullable
as ServiceType?,homeServiceType: freezed == homeServiceType ? _self.homeServiceType : homeServiceType // ignore: cast_nullable_to_non_nullable
as HomeServiceType?,personalServiceType: freezed == personalServiceType ? _self.personalServiceType : personalServiceType // ignore: cast_nullable_to_non_nullable
as PersonalServiceType?,professionalServiceType: freezed == professionalServiceType ? _self.professionalServiceType : professionalServiceType // ignore: cast_nullable_to_non_nullable
as ProfessionalServiceType?,eventServiceType: freezed == eventServiceType ? _self.eventServiceType : eventServiceType // ignore: cast_nullable_to_non_nullable
as EventServiceType?,transportServiceType: freezed == transportServiceType ? _self.transportServiceType : transportServiceType // ignore: cast_nullable_to_non_nullable
as TransportServiceType?,otherServiceType: freezed == otherServiceType ? _self.otherServiceType : otherServiceType // ignore: cast_nullable_to_non_nullable
as OtherServiceType?,
  ));
}

}


/// Adds pattern-matching-related methods to [ServicesDetails].
extension ServicesDetailsPatterns on ServicesDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ServicesDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServicesDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ServicesDetails value)  $default,){
final _that = this;
switch (_that) {
case _ServicesDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ServicesDetails value)?  $default,){
final _that = this;
switch (_that) {
case _ServicesDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? listingId,  ServiceType? serviceType,  HomeServiceType? homeServiceType,  PersonalServiceType? personalServiceType,  ProfessionalServiceType? professionalServiceType,  EventServiceType? eventServiceType,  TransportServiceType? transportServiceType,  OtherServiceType? otherServiceType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServicesDetails() when $default != null:
return $default(_that.listingId,_that.serviceType,_that.homeServiceType,_that.personalServiceType,_that.professionalServiceType,_that.eventServiceType,_that.transportServiceType,_that.otherServiceType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? listingId,  ServiceType? serviceType,  HomeServiceType? homeServiceType,  PersonalServiceType? personalServiceType,  ProfessionalServiceType? professionalServiceType,  EventServiceType? eventServiceType,  TransportServiceType? transportServiceType,  OtherServiceType? otherServiceType)  $default,) {final _that = this;
switch (_that) {
case _ServicesDetails():
return $default(_that.listingId,_that.serviceType,_that.homeServiceType,_that.personalServiceType,_that.professionalServiceType,_that.eventServiceType,_that.transportServiceType,_that.otherServiceType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? listingId,  ServiceType? serviceType,  HomeServiceType? homeServiceType,  PersonalServiceType? personalServiceType,  ProfessionalServiceType? professionalServiceType,  EventServiceType? eventServiceType,  TransportServiceType? transportServiceType,  OtherServiceType? otherServiceType)?  $default,) {final _that = this;
switch (_that) {
case _ServicesDetails() when $default != null:
return $default(_that.listingId,_that.serviceType,_that.homeServiceType,_that.personalServiceType,_that.professionalServiceType,_that.eventServiceType,_that.transportServiceType,_that.otherServiceType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ServicesDetails implements ServicesDetails {
  const _ServicesDetails({this.listingId, this.serviceType, this.homeServiceType, this.personalServiceType, this.professionalServiceType, this.eventServiceType, this.transportServiceType, this.otherServiceType});
  factory _ServicesDetails.fromJson(Map<String, dynamic> json) => _$ServicesDetailsFromJson(json);

@override final  String? listingId;
@override final  ServiceType? serviceType;
@override final  HomeServiceType? homeServiceType;
@override final  PersonalServiceType? personalServiceType;
@override final  ProfessionalServiceType? professionalServiceType;
@override final  EventServiceType? eventServiceType;
@override final  TransportServiceType? transportServiceType;
@override final  OtherServiceType? otherServiceType;

/// Create a copy of ServicesDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServicesDetailsCopyWith<_ServicesDetails> get copyWith => __$ServicesDetailsCopyWithImpl<_ServicesDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServicesDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServicesDetails&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.serviceType, serviceType) || other.serviceType == serviceType)&&(identical(other.homeServiceType, homeServiceType) || other.homeServiceType == homeServiceType)&&(identical(other.personalServiceType, personalServiceType) || other.personalServiceType == personalServiceType)&&(identical(other.professionalServiceType, professionalServiceType) || other.professionalServiceType == professionalServiceType)&&(identical(other.eventServiceType, eventServiceType) || other.eventServiceType == eventServiceType)&&(identical(other.transportServiceType, transportServiceType) || other.transportServiceType == transportServiceType)&&(identical(other.otherServiceType, otherServiceType) || other.otherServiceType == otherServiceType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,serviceType,homeServiceType,personalServiceType,professionalServiceType,eventServiceType,transportServiceType,otherServiceType);

@override
String toString() {
  return 'ServicesDetails(listingId: $listingId, serviceType: $serviceType, homeServiceType: $homeServiceType, personalServiceType: $personalServiceType, professionalServiceType: $professionalServiceType, eventServiceType: $eventServiceType, transportServiceType: $transportServiceType, otherServiceType: $otherServiceType)';
}


}

/// @nodoc
abstract mixin class _$ServicesDetailsCopyWith<$Res> implements $ServicesDetailsCopyWith<$Res> {
  factory _$ServicesDetailsCopyWith(_ServicesDetails value, $Res Function(_ServicesDetails) _then) = __$ServicesDetailsCopyWithImpl;
@override @useResult
$Res call({
 String? listingId, ServiceType? serviceType, HomeServiceType? homeServiceType, PersonalServiceType? personalServiceType, ProfessionalServiceType? professionalServiceType, EventServiceType? eventServiceType, TransportServiceType? transportServiceType, OtherServiceType? otherServiceType
});




}
/// @nodoc
class __$ServicesDetailsCopyWithImpl<$Res>
    implements _$ServicesDetailsCopyWith<$Res> {
  __$ServicesDetailsCopyWithImpl(this._self, this._then);

  final _ServicesDetails _self;
  final $Res Function(_ServicesDetails) _then;

/// Create a copy of ServicesDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = freezed,Object? serviceType = freezed,Object? homeServiceType = freezed,Object? personalServiceType = freezed,Object? professionalServiceType = freezed,Object? eventServiceType = freezed,Object? transportServiceType = freezed,Object? otherServiceType = freezed,}) {
  return _then(_ServicesDetails(
listingId: freezed == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as String?,serviceType: freezed == serviceType ? _self.serviceType : serviceType // ignore: cast_nullable_to_non_nullable
as ServiceType?,homeServiceType: freezed == homeServiceType ? _self.homeServiceType : homeServiceType // ignore: cast_nullable_to_non_nullable
as HomeServiceType?,personalServiceType: freezed == personalServiceType ? _self.personalServiceType : personalServiceType // ignore: cast_nullable_to_non_nullable
as PersonalServiceType?,professionalServiceType: freezed == professionalServiceType ? _self.professionalServiceType : professionalServiceType // ignore: cast_nullable_to_non_nullable
as ProfessionalServiceType?,eventServiceType: freezed == eventServiceType ? _self.eventServiceType : eventServiceType // ignore: cast_nullable_to_non_nullable
as EventServiceType?,transportServiceType: freezed == transportServiceType ? _self.transportServiceType : transportServiceType // ignore: cast_nullable_to_non_nullable
as TransportServiceType?,otherServiceType: freezed == otherServiceType ? _self.otherServiceType : otherServiceType // ignore: cast_nullable_to_non_nullable
as OtherServiceType?,
  ));
}


}

// dart format on
