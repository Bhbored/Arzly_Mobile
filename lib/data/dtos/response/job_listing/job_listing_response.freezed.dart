// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_listing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$JobListingResponse {

@JsonKey(name: 'Id') String get id;@JsonKey(name: 'Type') JobType get type;@JsonKey(name: 'Title') String get title;@JsonKey(name: 'Description') String get description;@JsonKey(name: 'Name') String get name;@JsonKey(name: 'Email') String get email;@JsonKey(name: 'PhoneNumber') String get phoneNumber;@JsonKey(name: 'ContactMethod') ContactMethod? get contactMethod;@JsonKey(name: 'JobField') JobField? get jobField;@JsonKey(name: 'ExperienceLevel') ExperienceLevel? get experienceLevel;@JsonKey(name: 'EducationLevel') EducationLevel? get educationLevel;@JsonKey(name: 'EmploymentType') EmploymentType? get employmentType;@JsonKey(name: 'WorkplaceType') WorkplaceType? get workplaceType;@JsonKey(name: 'SalaryMin') double? get salaryMin;@JsonKey(name: 'SalaryMax') double? get salaryMax;@JsonKey(name: 'Languages') List<JobLanguage>? get languages;@JsonKey(name: 'OwnerId') String get ownerId;@JsonKey(name: 'CreatedAt') DateTime get createdAt;@JsonKey(name: 'ExpiresAt') DateTime? get expiresAt;@JsonKey(name: 'Status') JobStatus get status;@JsonKey(name: 'BaseLocation') LocationPreset get baseLocation;@JsonKey(name: 'lon') double? get lon;@JsonKey(name: 'lat') double? get lat;@JsonKey(name: 'LocationTitle') String get locationTitle;@JsonKey(name: 'IsPromoted') bool get isPromoted;@JsonKey(name: 'PromotionType') PromotionType? get promotionType;@JsonKey(name: 'PromotionStartDate') DateTime? get promotionStartDate;@JsonKey(name: 'PromotionEndDate') DateTime? get promotionEndDate;
/// Create a copy of JobListingResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JobListingResponseCopyWith<JobListingResponse> get copyWith => _$JobListingResponseCopyWithImpl<JobListingResponse>(this as JobListingResponse, _$identity);

  /// Serializes this JobListingResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JobListingResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&(identical(other.jobField, jobField) || other.jobField == jobField)&&(identical(other.experienceLevel, experienceLevel) || other.experienceLevel == experienceLevel)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.workplaceType, workplaceType) || other.workplaceType == workplaceType)&&(identical(other.salaryMin, salaryMin) || other.salaryMin == salaryMin)&&(identical(other.salaryMax, salaryMax) || other.salaryMax == salaryMax)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.baseLocation, baseLocation) || other.baseLocation == baseLocation)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.locationTitle, locationTitle) || other.locationTitle == locationTitle)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.promotionType, promotionType) || other.promotionType == promotionType)&&(identical(other.promotionStartDate, promotionStartDate) || other.promotionStartDate == promotionStartDate)&&(identical(other.promotionEndDate, promotionEndDate) || other.promotionEndDate == promotionEndDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,type,title,description,name,email,phoneNumber,contactMethod,jobField,experienceLevel,educationLevel,employmentType,workplaceType,salaryMin,salaryMax,const DeepCollectionEquality().hash(languages),ownerId,createdAt,expiresAt,status,baseLocation,lon,lat,locationTitle,isPromoted,promotionType,promotionStartDate,promotionEndDate]);

@override
String toString() {
  return 'JobListingResponse(id: $id, type: $type, title: $title, description: $description, name: $name, email: $email, phoneNumber: $phoneNumber, contactMethod: $contactMethod, jobField: $jobField, experienceLevel: $experienceLevel, educationLevel: $educationLevel, employmentType: $employmentType, workplaceType: $workplaceType, salaryMin: $salaryMin, salaryMax: $salaryMax, languages: $languages, ownerId: $ownerId, createdAt: $createdAt, expiresAt: $expiresAt, status: $status, baseLocation: $baseLocation, lon: $lon, lat: $lat, locationTitle: $locationTitle, isPromoted: $isPromoted, promotionType: $promotionType, promotionStartDate: $promotionStartDate, promotionEndDate: $promotionEndDate)';
}


}

/// @nodoc
abstract mixin class $JobListingResponseCopyWith<$Res>  {
  factory $JobListingResponseCopyWith(JobListingResponse value, $Res Function(JobListingResponse) _then) = _$JobListingResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Type') JobType type,@JsonKey(name: 'Title') String title,@JsonKey(name: 'Description') String description,@JsonKey(name: 'Name') String name,@JsonKey(name: 'Email') String email,@JsonKey(name: 'PhoneNumber') String phoneNumber,@JsonKey(name: 'ContactMethod') ContactMethod? contactMethod,@JsonKey(name: 'JobField') JobField? jobField,@JsonKey(name: 'ExperienceLevel') ExperienceLevel? experienceLevel,@JsonKey(name: 'EducationLevel') EducationLevel? educationLevel,@JsonKey(name: 'EmploymentType') EmploymentType? employmentType,@JsonKey(name: 'WorkplaceType') WorkplaceType? workplaceType,@JsonKey(name: 'SalaryMin') double? salaryMin,@JsonKey(name: 'SalaryMax') double? salaryMax,@JsonKey(name: 'Languages') List<JobLanguage>? languages,@JsonKey(name: 'OwnerId') String ownerId,@JsonKey(name: 'CreatedAt') DateTime createdAt,@JsonKey(name: 'ExpiresAt') DateTime? expiresAt,@JsonKey(name: 'Status') JobStatus status,@JsonKey(name: 'BaseLocation') LocationPreset baseLocation,@JsonKey(name: 'lon') double? lon,@JsonKey(name: 'lat') double? lat,@JsonKey(name: 'LocationTitle') String locationTitle,@JsonKey(name: 'IsPromoted') bool isPromoted,@JsonKey(name: 'PromotionType') PromotionType? promotionType,@JsonKey(name: 'PromotionStartDate') DateTime? promotionStartDate,@JsonKey(name: 'PromotionEndDate') DateTime? promotionEndDate
});




}
/// @nodoc
class _$JobListingResponseCopyWithImpl<$Res>
    implements $JobListingResponseCopyWith<$Res> {
  _$JobListingResponseCopyWithImpl(this._self, this._then);

  final JobListingResponse _self;
  final $Res Function(JobListingResponse) _then;

/// Create a copy of JobListingResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = null,Object? title = null,Object? description = null,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? contactMethod = freezed,Object? jobField = freezed,Object? experienceLevel = freezed,Object? educationLevel = freezed,Object? employmentType = freezed,Object? workplaceType = freezed,Object? salaryMin = freezed,Object? salaryMax = freezed,Object? languages = freezed,Object? ownerId = null,Object? createdAt = null,Object? expiresAt = freezed,Object? status = null,Object? baseLocation = null,Object? lon = freezed,Object? lat = freezed,Object? locationTitle = null,Object? isPromoted = null,Object? promotionType = freezed,Object? promotionStartDate = freezed,Object? promotionEndDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as JobType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
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
as JobStatus,baseLocation: null == baseLocation ? _self.baseLocation : baseLocation // ignore: cast_nullable_to_non_nullable
as LocationPreset,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,locationTitle: null == locationTitle ? _self.locationTitle : locationTitle // ignore: cast_nullable_to_non_nullable
as String,isPromoted: null == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool,promotionType: freezed == promotionType ? _self.promotionType : promotionType // ignore: cast_nullable_to_non_nullable
as PromotionType?,promotionStartDate: freezed == promotionStartDate ? _self.promotionStartDate : promotionStartDate // ignore: cast_nullable_to_non_nullable
as DateTime?,promotionEndDate: freezed == promotionEndDate ? _self.promotionEndDate : promotionEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [JobListingResponse].
extension JobListingResponsePatterns on JobListingResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _JobListingResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _JobListingResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _JobListingResponse value)  $default,){
final _that = this;
switch (_that) {
case _JobListingResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _JobListingResponse value)?  $default,){
final _that = this;
switch (_that) {
case _JobListingResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Type')  JobType type, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'Email')  String email, @JsonKey(name: 'PhoneNumber')  String phoneNumber, @JsonKey(name: 'ContactMethod')  ContactMethod? contactMethod, @JsonKey(name: 'JobField')  JobField? jobField, @JsonKey(name: 'ExperienceLevel')  ExperienceLevel? experienceLevel, @JsonKey(name: 'EducationLevel')  EducationLevel? educationLevel, @JsonKey(name: 'EmploymentType')  EmploymentType? employmentType, @JsonKey(name: 'WorkplaceType')  WorkplaceType? workplaceType, @JsonKey(name: 'SalaryMin')  double? salaryMin, @JsonKey(name: 'SalaryMax')  double? salaryMax, @JsonKey(name: 'Languages')  List<JobLanguage>? languages, @JsonKey(name: 'OwnerId')  String ownerId, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'ExpiresAt')  DateTime? expiresAt, @JsonKey(name: 'Status')  JobStatus status, @JsonKey(name: 'BaseLocation')  LocationPreset baseLocation, @JsonKey(name: 'lon')  double? lon, @JsonKey(name: 'lat')  double? lat, @JsonKey(name: 'LocationTitle')  String locationTitle, @JsonKey(name: 'IsPromoted')  bool isPromoted, @JsonKey(name: 'PromotionType')  PromotionType? promotionType, @JsonKey(name: 'PromotionStartDate')  DateTime? promotionStartDate, @JsonKey(name: 'PromotionEndDate')  DateTime? promotionEndDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _JobListingResponse() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.description,_that.name,_that.email,_that.phoneNumber,_that.contactMethod,_that.jobField,_that.experienceLevel,_that.educationLevel,_that.employmentType,_that.workplaceType,_that.salaryMin,_that.salaryMax,_that.languages,_that.ownerId,_that.createdAt,_that.expiresAt,_that.status,_that.baseLocation,_that.lon,_that.lat,_that.locationTitle,_that.isPromoted,_that.promotionType,_that.promotionStartDate,_that.promotionEndDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Type')  JobType type, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'Email')  String email, @JsonKey(name: 'PhoneNumber')  String phoneNumber, @JsonKey(name: 'ContactMethod')  ContactMethod? contactMethod, @JsonKey(name: 'JobField')  JobField? jobField, @JsonKey(name: 'ExperienceLevel')  ExperienceLevel? experienceLevel, @JsonKey(name: 'EducationLevel')  EducationLevel? educationLevel, @JsonKey(name: 'EmploymentType')  EmploymentType? employmentType, @JsonKey(name: 'WorkplaceType')  WorkplaceType? workplaceType, @JsonKey(name: 'SalaryMin')  double? salaryMin, @JsonKey(name: 'SalaryMax')  double? salaryMax, @JsonKey(name: 'Languages')  List<JobLanguage>? languages, @JsonKey(name: 'OwnerId')  String ownerId, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'ExpiresAt')  DateTime? expiresAt, @JsonKey(name: 'Status')  JobStatus status, @JsonKey(name: 'BaseLocation')  LocationPreset baseLocation, @JsonKey(name: 'lon')  double? lon, @JsonKey(name: 'lat')  double? lat, @JsonKey(name: 'LocationTitle')  String locationTitle, @JsonKey(name: 'IsPromoted')  bool isPromoted, @JsonKey(name: 'PromotionType')  PromotionType? promotionType, @JsonKey(name: 'PromotionStartDate')  DateTime? promotionStartDate, @JsonKey(name: 'PromotionEndDate')  DateTime? promotionEndDate)  $default,) {final _that = this;
switch (_that) {
case _JobListingResponse():
return $default(_that.id,_that.type,_that.title,_that.description,_that.name,_that.email,_that.phoneNumber,_that.contactMethod,_that.jobField,_that.experienceLevel,_that.educationLevel,_that.employmentType,_that.workplaceType,_that.salaryMin,_that.salaryMax,_that.languages,_that.ownerId,_that.createdAt,_that.expiresAt,_that.status,_that.baseLocation,_that.lon,_that.lat,_that.locationTitle,_that.isPromoted,_that.promotionType,_that.promotionStartDate,_that.promotionEndDate);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  String id, @JsonKey(name: 'Type')  JobType type, @JsonKey(name: 'Title')  String title, @JsonKey(name: 'Description')  String description, @JsonKey(name: 'Name')  String name, @JsonKey(name: 'Email')  String email, @JsonKey(name: 'PhoneNumber')  String phoneNumber, @JsonKey(name: 'ContactMethod')  ContactMethod? contactMethod, @JsonKey(name: 'JobField')  JobField? jobField, @JsonKey(name: 'ExperienceLevel')  ExperienceLevel? experienceLevel, @JsonKey(name: 'EducationLevel')  EducationLevel? educationLevel, @JsonKey(name: 'EmploymentType')  EmploymentType? employmentType, @JsonKey(name: 'WorkplaceType')  WorkplaceType? workplaceType, @JsonKey(name: 'SalaryMin')  double? salaryMin, @JsonKey(name: 'SalaryMax')  double? salaryMax, @JsonKey(name: 'Languages')  List<JobLanguage>? languages, @JsonKey(name: 'OwnerId')  String ownerId, @JsonKey(name: 'CreatedAt')  DateTime createdAt, @JsonKey(name: 'ExpiresAt')  DateTime? expiresAt, @JsonKey(name: 'Status')  JobStatus status, @JsonKey(name: 'BaseLocation')  LocationPreset baseLocation, @JsonKey(name: 'lon')  double? lon, @JsonKey(name: 'lat')  double? lat, @JsonKey(name: 'LocationTitle')  String locationTitle, @JsonKey(name: 'IsPromoted')  bool isPromoted, @JsonKey(name: 'PromotionType')  PromotionType? promotionType, @JsonKey(name: 'PromotionStartDate')  DateTime? promotionStartDate, @JsonKey(name: 'PromotionEndDate')  DateTime? promotionEndDate)?  $default,) {final _that = this;
switch (_that) {
case _JobListingResponse() when $default != null:
return $default(_that.id,_that.type,_that.title,_that.description,_that.name,_that.email,_that.phoneNumber,_that.contactMethod,_that.jobField,_that.experienceLevel,_that.educationLevel,_that.employmentType,_that.workplaceType,_that.salaryMin,_that.salaryMax,_that.languages,_that.ownerId,_that.createdAt,_that.expiresAt,_that.status,_that.baseLocation,_that.lon,_that.lat,_that.locationTitle,_that.isPromoted,_that.promotionType,_that.promotionStartDate,_that.promotionEndDate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _JobListingResponse implements JobListingResponse {
  const _JobListingResponse({@JsonKey(name: 'Id') required this.id, @JsonKey(name: 'Type') required this.type, @JsonKey(name: 'Title') required this.title, @JsonKey(name: 'Description') required this.description, @JsonKey(name: 'Name') required this.name, @JsonKey(name: 'Email') required this.email, @JsonKey(name: 'PhoneNumber') required this.phoneNumber, @JsonKey(name: 'ContactMethod') this.contactMethod, @JsonKey(name: 'JobField') this.jobField, @JsonKey(name: 'ExperienceLevel') this.experienceLevel, @JsonKey(name: 'EducationLevel') this.educationLevel, @JsonKey(name: 'EmploymentType') this.employmentType, @JsonKey(name: 'WorkplaceType') this.workplaceType, @JsonKey(name: 'SalaryMin') this.salaryMin, @JsonKey(name: 'SalaryMax') this.salaryMax, @JsonKey(name: 'Languages') final  List<JobLanguage>? languages, @JsonKey(name: 'OwnerId') required this.ownerId, @JsonKey(name: 'CreatedAt') required this.createdAt, @JsonKey(name: 'ExpiresAt') this.expiresAt, @JsonKey(name: 'Status') required this.status, @JsonKey(name: 'BaseLocation') required this.baseLocation, @JsonKey(name: 'lon') this.lon, @JsonKey(name: 'lat') this.lat, @JsonKey(name: 'LocationTitle') required this.locationTitle, @JsonKey(name: 'IsPromoted') required this.isPromoted, @JsonKey(name: 'PromotionType') this.promotionType, @JsonKey(name: 'PromotionStartDate') this.promotionStartDate, @JsonKey(name: 'PromotionEndDate') this.promotionEndDate}): _languages = languages;
  factory _JobListingResponse.fromJson(Map<String, dynamic> json) => _$JobListingResponseFromJson(json);

@override@JsonKey(name: 'Id') final  String id;
@override@JsonKey(name: 'Type') final  JobType type;
@override@JsonKey(name: 'Title') final  String title;
@override@JsonKey(name: 'Description') final  String description;
@override@JsonKey(name: 'Name') final  String name;
@override@JsonKey(name: 'Email') final  String email;
@override@JsonKey(name: 'PhoneNumber') final  String phoneNumber;
@override@JsonKey(name: 'ContactMethod') final  ContactMethod? contactMethod;
@override@JsonKey(name: 'JobField') final  JobField? jobField;
@override@JsonKey(name: 'ExperienceLevel') final  ExperienceLevel? experienceLevel;
@override@JsonKey(name: 'EducationLevel') final  EducationLevel? educationLevel;
@override@JsonKey(name: 'EmploymentType') final  EmploymentType? employmentType;
@override@JsonKey(name: 'WorkplaceType') final  WorkplaceType? workplaceType;
@override@JsonKey(name: 'SalaryMin') final  double? salaryMin;
@override@JsonKey(name: 'SalaryMax') final  double? salaryMax;
 final  List<JobLanguage>? _languages;
@override@JsonKey(name: 'Languages') List<JobLanguage>? get languages {
  final value = _languages;
  if (value == null) return null;
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'OwnerId') final  String ownerId;
@override@JsonKey(name: 'CreatedAt') final  DateTime createdAt;
@override@JsonKey(name: 'ExpiresAt') final  DateTime? expiresAt;
@override@JsonKey(name: 'Status') final  JobStatus status;
@override@JsonKey(name: 'BaseLocation') final  LocationPreset baseLocation;
@override@JsonKey(name: 'lon') final  double? lon;
@override@JsonKey(name: 'lat') final  double? lat;
@override@JsonKey(name: 'LocationTitle') final  String locationTitle;
@override@JsonKey(name: 'IsPromoted') final  bool isPromoted;
@override@JsonKey(name: 'PromotionType') final  PromotionType? promotionType;
@override@JsonKey(name: 'PromotionStartDate') final  DateTime? promotionStartDate;
@override@JsonKey(name: 'PromotionEndDate') final  DateTime? promotionEndDate;

/// Create a copy of JobListingResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$JobListingResponseCopyWith<_JobListingResponse> get copyWith => __$JobListingResponseCopyWithImpl<_JobListingResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$JobListingResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _JobListingResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.contactMethod, contactMethod) || other.contactMethod == contactMethod)&&(identical(other.jobField, jobField) || other.jobField == jobField)&&(identical(other.experienceLevel, experienceLevel) || other.experienceLevel == experienceLevel)&&(identical(other.educationLevel, educationLevel) || other.educationLevel == educationLevel)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.workplaceType, workplaceType) || other.workplaceType == workplaceType)&&(identical(other.salaryMin, salaryMin) || other.salaryMin == salaryMin)&&(identical(other.salaryMax, salaryMax) || other.salaryMax == salaryMax)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.baseLocation, baseLocation) || other.baseLocation == baseLocation)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.locationTitle, locationTitle) || other.locationTitle == locationTitle)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.promotionType, promotionType) || other.promotionType == promotionType)&&(identical(other.promotionStartDate, promotionStartDate) || other.promotionStartDate == promotionStartDate)&&(identical(other.promotionEndDate, promotionEndDate) || other.promotionEndDate == promotionEndDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,type,title,description,name,email,phoneNumber,contactMethod,jobField,experienceLevel,educationLevel,employmentType,workplaceType,salaryMin,salaryMax,const DeepCollectionEquality().hash(_languages),ownerId,createdAt,expiresAt,status,baseLocation,lon,lat,locationTitle,isPromoted,promotionType,promotionStartDate,promotionEndDate]);

@override
String toString() {
  return 'JobListingResponse(id: $id, type: $type, title: $title, description: $description, name: $name, email: $email, phoneNumber: $phoneNumber, contactMethod: $contactMethod, jobField: $jobField, experienceLevel: $experienceLevel, educationLevel: $educationLevel, employmentType: $employmentType, workplaceType: $workplaceType, salaryMin: $salaryMin, salaryMax: $salaryMax, languages: $languages, ownerId: $ownerId, createdAt: $createdAt, expiresAt: $expiresAt, status: $status, baseLocation: $baseLocation, lon: $lon, lat: $lat, locationTitle: $locationTitle, isPromoted: $isPromoted, promotionType: $promotionType, promotionStartDate: $promotionStartDate, promotionEndDate: $promotionEndDate)';
}


}

/// @nodoc
abstract mixin class _$JobListingResponseCopyWith<$Res> implements $JobListingResponseCopyWith<$Res> {
  factory _$JobListingResponseCopyWith(_JobListingResponse value, $Res Function(_JobListingResponse) _then) = __$JobListingResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') String id,@JsonKey(name: 'Type') JobType type,@JsonKey(name: 'Title') String title,@JsonKey(name: 'Description') String description,@JsonKey(name: 'Name') String name,@JsonKey(name: 'Email') String email,@JsonKey(name: 'PhoneNumber') String phoneNumber,@JsonKey(name: 'ContactMethod') ContactMethod? contactMethod,@JsonKey(name: 'JobField') JobField? jobField,@JsonKey(name: 'ExperienceLevel') ExperienceLevel? experienceLevel,@JsonKey(name: 'EducationLevel') EducationLevel? educationLevel,@JsonKey(name: 'EmploymentType') EmploymentType? employmentType,@JsonKey(name: 'WorkplaceType') WorkplaceType? workplaceType,@JsonKey(name: 'SalaryMin') double? salaryMin,@JsonKey(name: 'SalaryMax') double? salaryMax,@JsonKey(name: 'Languages') List<JobLanguage>? languages,@JsonKey(name: 'OwnerId') String ownerId,@JsonKey(name: 'CreatedAt') DateTime createdAt,@JsonKey(name: 'ExpiresAt') DateTime? expiresAt,@JsonKey(name: 'Status') JobStatus status,@JsonKey(name: 'BaseLocation') LocationPreset baseLocation,@JsonKey(name: 'lon') double? lon,@JsonKey(name: 'lat') double? lat,@JsonKey(name: 'LocationTitle') String locationTitle,@JsonKey(name: 'IsPromoted') bool isPromoted,@JsonKey(name: 'PromotionType') PromotionType? promotionType,@JsonKey(name: 'PromotionStartDate') DateTime? promotionStartDate,@JsonKey(name: 'PromotionEndDate') DateTime? promotionEndDate
});




}
/// @nodoc
class __$JobListingResponseCopyWithImpl<$Res>
    implements _$JobListingResponseCopyWith<$Res> {
  __$JobListingResponseCopyWithImpl(this._self, this._then);

  final _JobListingResponse _self;
  final $Res Function(_JobListingResponse) _then;

/// Create a copy of JobListingResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = null,Object? title = null,Object? description = null,Object? name = null,Object? email = null,Object? phoneNumber = null,Object? contactMethod = freezed,Object? jobField = freezed,Object? experienceLevel = freezed,Object? educationLevel = freezed,Object? employmentType = freezed,Object? workplaceType = freezed,Object? salaryMin = freezed,Object? salaryMax = freezed,Object? languages = freezed,Object? ownerId = null,Object? createdAt = null,Object? expiresAt = freezed,Object? status = null,Object? baseLocation = null,Object? lon = freezed,Object? lat = freezed,Object? locationTitle = null,Object? isPromoted = null,Object? promotionType = freezed,Object? promotionStartDate = freezed,Object? promotionEndDate = freezed,}) {
  return _then(_JobListingResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as JobType,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
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
as JobStatus,baseLocation: null == baseLocation ? _self.baseLocation : baseLocation // ignore: cast_nullable_to_non_nullable
as LocationPreset,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,locationTitle: null == locationTitle ? _self.locationTitle : locationTitle // ignore: cast_nullable_to_non_nullable
as String,isPromoted: null == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool,promotionType: freezed == promotionType ? _self.promotionType : promotionType // ignore: cast_nullable_to_non_nullable
as PromotionType?,promotionStartDate: freezed == promotionStartDate ? _self.promotionStartDate : promotionStartDate // ignore: cast_nullable_to_non_nullable
as DateTime?,promotionEndDate: freezed == promotionEndDate ? _self.promotionEndDate : promotionEndDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
