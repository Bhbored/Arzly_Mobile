import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/core/enums/job_listing/education_level.dart';
import 'package:arzly/core/enums/job_listing/employment_type.dart';
import 'package:arzly/core/enums/job_listing/experience_level.dart';
import 'package:arzly/core/enums/job_listing/job_field.dart';
import 'package:arzly/core/enums/job_listing/job_language.dart';
import 'package:arzly/core/enums/job_listing/job_type.dart';
import 'package:arzly/core/enums/job_listing/workplace_type.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_listing_add_request.freezed.dart';
part 'job_listing_add_request.g.dart';

@freezed
sealed class JobListingAddRequest with _$JobListingAddRequest {
  const factory JobListingAddRequest({
    @JsonKey(name: 'Type') required JobType type,
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Description') required String description,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Email') required String email,
    @JsonKey(name: 'PhoneNumber') required String phoneNumber,
    @JsonKey(name: 'BaseLocation') required LocationPreset baseLocation,
    @JsonKey(name: 'lon') double? lon,
    @JsonKey(name: 'lat') double? lat,
    @JsonKey(name: 'LocationTitle') required String locationTitle,
    @JsonKey(name: 'ContactMethod') ContactMethod? contactMethod,
    @JsonKey(name: 'JobField') required JobField? jobField,
    @JsonKey(name: 'ExperienceLevel') required ExperienceLevel? experienceLevel,
    @JsonKey(name: 'EducationLevel') required EducationLevel? educationLevel,
    @JsonKey(name: 'EmploymentType') required EmploymentType? employmentType,
    @JsonKey(name: 'WorkplaceType') WorkplaceType? workplaceType,
    @JsonKey(name: 'SalaryMin') double? salaryMin,
    @JsonKey(name: 'SalaryMax') double? salaryMax,
    @JsonKey(name: 'Languages') List<JobLanguage>? languages,
    @JsonKey(name: 'OwnerId') required String ownerId,
    @JsonKey(name: 'ExpiresAt') DateTime? expiresAt,
  }) = _JobListingAddRequest;

  factory JobListingAddRequest.fromJson(Map<String, dynamic> json) =>
      _$JobListingAddRequestFromJson(json);
}
