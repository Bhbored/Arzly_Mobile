// Response to Entity
import 'package:arzly/data/dtos/request/job_listing/job_listing_add_request.dart';
import 'package:arzly/data/dtos/response/job_listing/job_listing_response.dart';
import 'package:arzly/data/dtos/response/job_listing/job_listing_update_request.dart';
import 'package:arzly/domain/entities/job_listing/job_listing.dart';

extension JobListingResponseMapper on JobListingResponse {
  JobListing toEntity() => JobListing(
    id: id,
    type: type,
    title: title,
    description: description,
    name: name,
    email: email,
    phoneNumber: phoneNumber,
    baseLocation: baseLocation,
    lon: lon,
    lat: lat,
    locationTitle: locationTitle,
    contactMethod: contactMethod,
    jobField: jobField,
    experienceLevel: experienceLevel,
    educationLevel: educationLevel,
    employmentType: employmentType,
    workplaceType: workplaceType,
    salaryMin: salaryMin,
    salaryMax: salaryMax,
    languages: languages,
    ownerId: ownerId,
    createdAt: createdAt,
    expiresAt: expiresAt,
    status: status,
    isPromoted: isPromoted,
    promotionType: promotionType,
    promotionStartDate: promotionStartDate,
    promotionEndDate: promotionEndDate,
  );
}

extension JobListingToAddRequestMapper on JobListing {
  JobListingAddRequest toAddRequest() => JobListingAddRequest(
    type: type,
    title: title,
    description: description,
    name: name,
    email: email,
    phoneNumber: phoneNumber,
    baseLocation: baseLocation,
    lon: lon,
    lat: lat,
    locationTitle: locationTitle,
    contactMethod: contactMethod,
    jobField: jobField,
    experienceLevel: experienceLevel,
    educationLevel: educationLevel,
    employmentType: employmentType,
    workplaceType: workplaceType,
    salaryMin: salaryMin,
    salaryMax: salaryMax,
    languages: languages,
    ownerId: ownerId,
    expiresAt: expiresAt,
  );
}

extension JobListingToUpdateRequestMapper on JobListing {
  JobListingUpdateRequest toUpdateRequest() => JobListingUpdateRequest(
    id: id,
    type: type,
    title: title,
    description: description,
    name: name,
    email: email,
    phoneNumber: phoneNumber,
    baseLocation: baseLocation,
    lon: lon,
    lat: lat,
    locationTitle: locationTitle,
    contactMethod: contactMethod,
    jobField: jobField,
    experienceLevel: experienceLevel,
    educationLevel: educationLevel,
    employmentType: employmentType,
    workplaceType: workplaceType,
    salaryMin: salaryMin,
    salaryMax: salaryMax,
    languages: languages,
    expiresAt: expiresAt,
    status: status,
    isPromoted: isPromoted,
    promotionType: promotionType,
    promotionStartDate: promotionStartDate,
    promotionEndDate: promotionEndDate,
  );
}
