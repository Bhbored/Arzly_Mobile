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

part 'job_listing.freezed.dart';

@freezed
sealed class JobListing with _$JobListing {
  const factory JobListing({
    required String id,
    required JobType type,
    required String title,
    required String description,
    required String name,
    required String email,
    required String phoneNumber,
    required LocationPreset baseLocation,
    double? lon,
    double? lat,
    required String locationTitle,
    ContactMethod? contactMethod,
    JobField? jobField,
    ExperienceLevel? experienceLevel,
    EducationLevel? educationLevel,
    EmploymentType? employmentType,
    WorkplaceType? workplaceType,
    double? salaryMin,
    double? salaryMax,
    List<JobLanguage>? languages,
    required String ownerId,
    required DateTime createdAt,
    DateTime? expiresAt,
    @Default(JobStatus.pending) JobStatus status,
    @Default(false) bool isPromoted,
    PromotionType? promotionType,
    DateTime? promotionStartDate,
    DateTime? promotionEndDate,
  }) = _JobListing;
}
