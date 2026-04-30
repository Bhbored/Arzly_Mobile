// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JobListing {

 String get id; JobType get type; String get title; String get description; String get name; String get email; String get phoneNumber; LocationPreset get baseLocation; double? get lon; double? get lat; String get locationTitle; ContactMethod? get contactMethod; JobField? get jobField; ExperienceLevel? get experienceLevel; EducationLevel? get educationLevel; EmploymentType? get employmentType; WorkplaceType? get workplaceType; double? get salaryMin; double? get salaryMax; List<JobLanguage>? get languages; String get ownerId; DateTime get createdAt; DateTime? get expiresAt; JobStatus get status; bool get isPromoted; PromotionType? get promotionType; DateTime? get promotionStartDate; DateTime? get promotionEndDate;
/// Create a copy of JobListing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobListingCopyWith<JobListing> get copyWith => _$JobListingCopyWithImpl<JobListing>(this as JobListing, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobListing&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.baseLocation, baseLocation) || other.baseLocation == baseLocation)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.locationTitle, locationTitle) || other.locationTitle == locationTitle)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&(identical(other.jobField, jobField) || other.jobField == jobField)&&(identical(other.experienceLevel, experienceLevel) || other.experienceLevel == experienceLevel)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.workplaceType, workplaceType) || other.workplaceType == workplaceType)&&(identical(other.salaryMin, salaryMin) || other.salaryMin == salaryMin)&&(identical(other.salaryMax, salaryMax) || other.salaryMax == salaryMax)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.promotionType, promotionType) || other.promotionType == promotionType)&&(identical(other.promotionStartDate, promotionStartDate) || other.promotionStartDate == promotionStartDate)&&(identical(other.promotionEndDate, promotionEndDate) || other.promotionEndDate == promotionEndDate));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,type,title,description,name,email,phoneNumber,baseLocation,lon,lat,locationTitle,contactMethod,jobField,experienceLevel,educationLevel,employmentType,workplaceType,salaryMin,salaryMax,const DeepCollectionEquality().hash(languages),ownerId,createdAt,expiresAt,status,isPromoted,promotionType,promotionStartDate,promotionEndDate]);

@override
String toString() {
  return 'JobListing(id: $id, type: $type, title: $title, description: $description, name: $name, email: $email, phoneNumber: $phoneNumber, baseLocation: $baseLocation, lon: $lon, lat: $lat, locationTitle: $locationTitle, contactMethod: $contactMethod, jobField: $jobField, experienceLevel: $experienceLevel, educationLevel: $educationLevel, employmentType: $employmentType, workplaceType: $workplaceType, salaryMin: $salaryMin, salaryMax: $salaryMax, languages: $languages, ownerId: $ownerId, createdAt: $createdAt, expiresAt: $expiresAt, status: $status, isPromoted: $isPromoted, promotionType: $promotionType, promotionStartDate: $promotionStartDate, promotionEndDate: $promotionEndDate)';
}


}

/// @nodoc
abstract mixin class $JobListingCopyWith<$Res>  {
  factory $JobListingCopyWith(JobListing value, $Res Function(JobListing) _then) = _$JobListingCopyWithImpl;
@useResult
$Res call({
 String id, JobType type, String title, String description, String name, String email, String phoneNumber, LocationPreset baseLocation, double? lon, double? lat, String locationTitle, ContactMethod? contactMethod, JobField? jobField, ExperienceLevel? experienceLevel, EducationLevel? educationLevel, EmploymentType? employmentType, WorkplaceType? workplaceType, double? salaryMin, double? salaryMax, List<JobLanguage>? languages, String ownerId, DateTime createdAt, DateTime? expiresAt, JobStatus status, bool isPromoted, PromotionType? promotionType, DateTime? promotionStartDate, DateTime? promotionEndDate
});




}
/// @nodoc
class _$JobListingCopyWithImpl<$Res>
    implements $JobListingCopyWith<$Res> {
  _$JobListingCopyWithImpl(this._self, this._then);

  final JobListing _self;
  final $Res Function(JobListing) _then;

/// Create a copy of JobListing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? description = null,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? baseLocation = null,Object? lon = freezed,Object? lat = freezed,Object? locationTitle = null,Object? contactMethod = freezed,Object? jobField = freezed,Object? experienceLevel = freezed,Object? educationLevel = freezed,Object? employmentType = freezed,Object? workplaceType = freezed,Object? salaryMin = freezed,Object? salaryMax = freezed,Object? languages = freezed,Object? ownerId = null,Object? createdAt = null,Object? expiresAt = freezed,Object? status = null,Object? isPromoted = null,Object? promotionType = freezed,Object? promotionStartDate = freezed,Object? promotionEndDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as JobType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,baseLocation: null == baseLocation ? _self.baseLocation : baseLocation // ignore: cast_nullable_to_non_nullable
as LocationPreset,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,locationTitle: null == locationTitle ? _self.locationTitle : locationTitle // ignore: cast_nullable_to_non_nullable
as String,contactMethod: freezed == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as ContactMethod?,jobField: freezed == jobField ? _self.jobField : jobField // ignore: cast_nullable_to_non_nullable
as JobField?,experienceLevel: freezed == experienceLevel ? _self.experienceLevel : experienceLevel // ignore: cast_nullable_to_non_nullable
as ExperienceLevel?,educationLevel: freezed == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as EducationLevel?,employmentType: freezed == employmentType ? _self.employmentType : employmentType // ignore: cast_nullable_to_non_nullable
as EmploymentType?,workplaceType: freezed == workplaceType ? _self.workplaceType : workplaceType // ignore: cast_nullable_to_non_nullable
as WorkplaceType?,salaryMin: freezed == salaryMin ? _self.salaryMin : salaryMin // ignore: cast_nullable_to_non_nullable
as double?,salaryMax: freezed == salaryMax ? _self.salaryMax : salaryMax // ignore: cast_nullable_to_non_nullable
as double?,languages: freezed == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<JobLanguage>?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as JobStatus,isPromoted: null == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool,promotionType: freezed == promotionType ? _self.promotionType : promotionType // ignore: cast_nullable_to_non_nullable
as PromotionType?,promotionStartDate: freezed == promotionStartDate ? _self.promotionStartDate : promotionStartDate // ignore: cast_nullable_to_non_nullable
as DateTime?,promotionEndDate: freezed == promotionEndDate ? _self.promotionEndDate : promotionEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [JobListing].
extension JobListingPatterns on JobListing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobListing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobListing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobListing value)  $default,){
final _that = this;
switch (_that) {
case _JobListing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobListing value)?  $default,){
final _that = this;
switch (_that) {
case _JobListing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  JobType type,  String title,  String description,  String name,  String email,  String phoneNumber,  LocationPreset baseLocation,  double? lon,  double? lat,  String locationTitle,  ContactMethod? contactMethod,  JobField? jobField,  ExperienceLevel? experienceLevel,  EducationLevel? educationLevel,  EmploymentType? employmentType,  WorkplaceType? workplaceType,  double? salaryMin,  double? salaryMax,  List<JobLanguage>? languages,  String ownerId,  DateTime createdAt,  DateTime? expiresAt,  JobStatus status,  bool isPromoted,  PromotionType? promotionType,  DateTime? promotionStartDate,  DateTime? promotionEndDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobListing() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.description,_that.name,_that.email,_that.phoneNumber,_that.baseLocation,_that.lon,_that.lat,_that.locationTitle,_that.contactMethod,_that.jobField,_that.experienceLevel,_that.educationLevel,_that.employmentType,_that.workplaceType,_that.salaryMin,_that.salaryMax,_that.languages,_that.ownerId,_that.createdAt,_that.expiresAt,_that.status,_that.isPromoted,_that.promotionType,_that.promotionStartDate,_that.promotionEndDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  JobType type,  String title,  String description,  String name,  String email,  String phoneNumber,  LocationPreset baseLocation,  double? lon,  double? lat,  String locationTitle,  ContactMethod? contactMethod,  JobField? jobField,  ExperienceLevel? experienceLevel,  EducationLevel? educationLevel,  EmploymentType? employmentType,  WorkplaceType? workplaceType,  double? salaryMin,  double? salaryMax,  List<JobLanguage>? languages,  String ownerId,  DateTime createdAt,  DateTime? expiresAt,  JobStatus status,  bool isPromoted,  PromotionType? promotionType,  DateTime? promotionStartDate,  DateTime? promotionEndDate)  $default,) {final _that = this;
switch (_that) {
case _JobListing():
return $default(_that.id,_that.type,_that.title,_that.description,_that.name,_that.email,_that.phoneNumber,_that.baseLocation,_that.lon,_that.lat,_that.locationTitle,_that.contactMethod,_that.jobField,_that.experienceLevel,_that.educationLevel,_that.employmentType,_that.workplaceType,_that.salaryMin,_that.salaryMax,_that.languages,_that.ownerId,_that.createdAt,_that.expiresAt,_that.status,_that.isPromoted,_that.promotionType,_that.promotionStartDate,_that.promotionEndDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  JobType type,  String title,  String description,  String name,  String email,  String phoneNumber,  LocationPreset baseLocation,  double? lon,  double? lat,  String locationTitle,  ContactMethod? contactMethod,  JobField? jobField,  ExperienceLevel? experienceLevel,  EducationLevel? educationLevel,  EmploymentType? employmentType,  WorkplaceType? workplaceType,  double? salaryMin,  double? salaryMax,  List<JobLanguage>? languages,  String ownerId,  DateTime createdAt,  DateTime? expiresAt,  JobStatus status,  bool isPromoted,  PromotionType? promotionType,  DateTime? promotionStartDate,  DateTime? promotionEndDate)?  $default,) {final _that = this;
switch (_that) {
case _JobListing() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.description,_that.name,_that.email,_that.phoneNumber,_that.baseLocation,_that.lon,_that.lat,_that.locationTitle,_that.contactMethod,_that.jobField,_that.experienceLevel,_that.educationLevel,_that.employmentType,_that.workplaceType,_that.salaryMin,_that.salaryMax,_that.languages,_that.ownerId,_that.createdAt,_that.expiresAt,_that.status,_that.isPromoted,_that.promotionType,_that.promotionStartDate,_that.promotionEndDate);case _:
  return null;

}
}

}

/// @nodoc


class _JobListing implements JobListing {
  const _JobListing({required this.id, required this.type, required this.title, required this.description, required this.name, required this.email, required this.phoneNumber, required this.baseLocation, this.lon, this.lat, required this.locationTitle, this.contactMethod, this.jobField, this.experienceLevel, this.educationLevel, this.employmentType, this.workplaceType, this.salaryMin, this.salaryMax, final  List<JobLanguage>? languages, required this.ownerId, required this.createdAt, this.expiresAt, this.status = JobStatus.pending, this.isPromoted = false, this.promotionType, this.promotionStartDate, this.promotionEndDate}): _languages = languages;
  

@override final  String id;
@override final  JobType type;
@override final  String title;
@override final  String description;
@override final  String name;
@override final  String email;
@override final  String phoneNumber;
@override final  LocationPreset baseLocation;
@override final  double? lon;
@override final  double? lat;
@override final  String locationTitle;
@override final  ContactMethod? contactMethod;
@override final  JobField? jobField;
@override final  ExperienceLevel? experienceLevel;
@override final  EducationLevel? educationLevel;
@override final  EmploymentType? employmentType;
@override final  WorkplaceType? workplaceType;
@override final  double? salaryMin;
@override final  double? salaryMax;
 final  List<JobLanguage>? _languages;
@override List<JobLanguage>? get languages {
  final value = _languages;
  if (value == null) return null;
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String ownerId;
@override final  DateTime createdAt;
@override final  DateTime? expiresAt;
@override@JsonKey() final  JobStatus status;
@override@JsonKey() final  bool isPromoted;
@override final  PromotionType? promotionType;
@override final  DateTime? promotionStartDate;
@override final  DateTime? promotionEndDate;

/// Create a copy of JobListing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobListingCopyWith<_JobListing> get copyWith => __$JobListingCopyWithImpl<_JobListing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobListing&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.baseLocation, baseLocation) || other.baseLocation == baseLocation)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.locationTitle, locationTitle) || other.locationTitle == locationTitle)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&(identical(other.jobField, jobField) || other.jobField == jobField)&&(identical(other.experienceLevel, experienceLevel) || other.experienceLevel == experienceLevel)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.workplaceType, workplaceType) || other.workplaceType == workplaceType)&&(identical(other.salaryMin, salaryMin) || other.salaryMin == salaryMin)&&(identical(other.salaryMax, salaryMax) || other.salaryMax == salaryMax)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.promotionType, promotionType) || other.promotionType == promotionType)&&(identical(other.promotionStartDate, promotionStartDate) || other.promotionStartDate == promotionStartDate)&&(identical(other.promotionEndDate, promotionEndDate) || other.promotionEndDate == promotionEndDate));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,type,title,description,name,email,phoneNumber,baseLocation,lon,lat,locationTitle,contactMethod,jobField,experienceLevel,educationLevel,employmentType,workplaceType,salaryMin,salaryMax,const DeepCollectionEquality().hash(_languages),ownerId,createdAt,expiresAt,status,isPromoted,promotionType,promotionStartDate,promotionEndDate]);

@override
String toString() {
  return 'JobListing(id: $id, type: $type, title: $title, description: $description, name: $name, email: $email, phoneNumber: $phoneNumber, baseLocation: $baseLocation, lon: $lon, lat: $lat, locationTitle: $locationTitle, contactMethod: $contactMethod, jobField: $jobField, experienceLevel: $experienceLevel, educationLevel: $educationLevel, employmentType: $employmentType, workplaceType: $workplaceType, salaryMin: $salaryMin, salaryMax: $salaryMax, languages: $languages, ownerId: $ownerId, createdAt: $createdAt, expiresAt: $expiresAt, status: $status, isPromoted: $isPromoted, promotionType: $promotionType, promotionStartDate: $promotionStartDate, promotionEndDate: $promotionEndDate)';
}


}

/// @nodoc
abstract mixin class _$JobListingCopyWith<$Res> implements $JobListingCopyWith<$Res> {
  factory _$JobListingCopyWith(_JobListing value, $Res Function(_JobListing) _then) = __$JobListingCopyWithImpl;
@override @useResult
$Res call({
 String id, JobType type, String title, String description, String name, String email, String phoneNumber, LocationPreset baseLocation, double? lon, double? lat, String locationTitle, ContactMethod? contactMethod, JobField? jobField, ExperienceLevel? experienceLevel, EducationLevel? educationLevel, EmploymentType? employmentType, WorkplaceType? workplaceType, double? salaryMin, double? salaryMax, List<JobLanguage>? languages, String ownerId, DateTime createdAt, DateTime? expiresAt, JobStatus status, bool isPromoted, PromotionType? promotionType, DateTime? promotionStartDate, DateTime? promotionEndDate
});




}
/// @nodoc
class __$JobListingCopyWithImpl<$Res>
    implements _$JobListingCopyWith<$Res> {
  __$JobListingCopyWithImpl(this._self, this._then);

  final _JobListing _self;
  final $Res Function(_JobListing) _then;

/// Create a copy of JobListing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? description = null,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? baseLocation = null,Object? lon = freezed,Object? lat = freezed,Object? locationTitle = null,Object? contactMethod = freezed,Object? jobField = freezed,Object? experienceLevel = freezed,Object? educationLevel = freezed,Object? employmentType = freezed,Object? workplaceType = freezed,Object? salaryMin = freezed,Object? salaryMax = freezed,Object? languages = freezed,Object? ownerId = null,Object? createdAt = null,Object? expiresAt = freezed,Object? status = null,Object? isPromoted = null,Object? promotionType = freezed,Object? promotionStartDate = freezed,Object? promotionEndDate = freezed,}) {
  return _then(_JobListing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as JobType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,baseLocation: null == baseLocation ? _self.baseLocation : baseLocation // ignore: cast_nullable_to_non_nullable
as LocationPreset,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,locationTitle: null == locationTitle ? _self.locationTitle : locationTitle // ignore: cast_nullable_to_non_nullable
as String,contactMethod: freezed == contactMethod ? _self.contactMethod : contactMethod // ignore: cast_nullable_to_non_nullable
as ContactMethod?,jobField: freezed == jobField ? _self.jobField : jobField // ignore: cast_nullable_to_non_nullable
as JobField?,experienceLevel: freezed == experienceLevel ? _self.experienceLevel : experienceLevel // ignore: cast_nullable_to_non_nullable
as ExperienceLevel?,educationLevel: freezed == educationLevel ? _self.educationLevel : educationLevel // ignore: cast_nullable_to_non_nullable
as EducationLevel?,employmentType: freezed == employmentType ? _self.employmentType : employmentType // ignore: cast_nullable_to_non_nullable
as EmploymentType?,workplaceType: freezed == workplaceType ? _self.workplaceType : workplaceType // ignore: cast_nullable_to_non_nullable
as WorkplaceType?,salaryMin: freezed == salaryMin ? _self.salaryMin : salaryMin // ignore: cast_nullable_to_non_nullable
as double?,salaryMax: freezed == salaryMax ? _self.salaryMax : salaryMax // ignore: cast_nullable_to_non_nullable
as double?,languages: freezed == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<JobLanguage>?,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as JobStatus,isPromoted: null == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool,promotionType: freezed == promotionType ? _self.promotionType : promotionType // ignore: cast_nullable_to_non_nullable
as PromotionType?,promotionStartDate: freezed == promotionStartDate ? _self.promotionStartDate : promotionStartDate // ignore: cast_nullable_to_non_nullable
as DateTime?,promotionEndDate: freezed == promotionEndDate ? _self.promotionEndDate : promotionEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
