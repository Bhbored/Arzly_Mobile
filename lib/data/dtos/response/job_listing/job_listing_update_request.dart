import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/core/enums/job_listing/education_level.dart';
import 'package:arzly/core/enums/job_listing/employment_type.dart';
import 'package:arzly/core/enums/job_listing/experience_level.dart';
import 'package:arzly/core/enums/job_listing/job_field.dart';
import 'package:arzly/core/enums/job_listing/job_language.dart';
import 'package:arzly/core/enums/job_listing/job_status.dart';
import 'package:arzly/core/enums/job_listing/job_type.dart';
import 'package:arzly/core/enums/job_listing/workplace_type.dart';
import 'package:arzly/core/enums/listing/promotion_type.dart';
import 'package:arzly/core/enums/location_preset.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_listing_update_request.freezed.dart';
part 'job_listing_update_request.g.dart';

@freezed
sealed class JobListingUpdateRequest with _$JobListingUpdateRequest {
  const factory JobListingUpdateRequest({
    @JsonKey(name: 'Id') required String id,
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
    @JsonKey(name: 'JobField') JobField? jobField,
    @JsonKey(name: 'ExperienceLevel') ExperienceLevel? experienceLevel,
    @JsonKey(name: 'EducationLevel') EducationLevel? educationLevel,
    @JsonKey(name: 'EmploymentType') EmploymentType? employmentType,
    @JsonKey(name: 'WorkplaceType') WorkplaceType? workplaceType,
    @JsonKey(name: 'SalaryMin') double? salaryMin,
    @JsonKey(name: 'SalaryMax') double? salaryMax,
    @JsonKey(name: 'Languages') List<JobLanguage>? languages,
    @JsonKey(name: 'ExpiresAt') DateTime? expiresAt,
    @JsonKey(name: 'Status') required JobStatus status,
    @JsonKey(name: 'IsPromoted') required bool isPromoted,
    @JsonKey(name: 'PromotionType') PromotionType? promotionType,
    @JsonKey(name: 'PromotionStartDate') DateTime? promotionStartDate,
    @JsonKey(name: 'PromotionEndDate') DateTime? promotionEndDate,
  }) = _JobListingUpdateRequest;

  factory JobListingUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$JobListingUpdateRequestFromJson(json);
}
