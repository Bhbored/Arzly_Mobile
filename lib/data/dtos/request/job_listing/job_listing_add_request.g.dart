// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_listing_add_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_JobListingAddRequest _$JobListingAddRequestFromJson(
  Map<String, dynamic> json,
) => _JobListingAddRequest(
  type: $enumDecode(_$JobTypeEnumMap, json['Type']),
  title: json['Title'] as String,
  description: json['Description'] as String,
  name: json['Name'] as String,
  email: json['Email'] as String,
  phoneNumber: json['PhoneNumber'] as String,
  baseLocation: $enumDecode(_$LocationPresetEnumMap, json['BaseLocation']),
  lon: (json['lon'] as num?)?.toDouble(),
  lat: (json['lat'] as num?)?.toDouble(),
  locationTitle: json['LocationTitle'] as String,
  contactMethod: $enumDecodeNullable(
    _$ContactMethodEnumMap,
    json['ContactMethod'],
  ),
  jobField: $enumDecodeNullable(_$JobFieldEnumMap, json['JobField']),
  experienceLevel: $enumDecodeNullable(
    _$ExperienceLevelEnumMap,
    json['ExperienceLevel'],
  ),
  educationLevel: $enumDecodeNullable(
    _$EducationLevelEnumMap,
    json['EducationLevel'],
  ),
  employmentType: $enumDecodeNullable(
    _$EmploymentTypeEnumMap,
    json['EmploymentType'],
  ),
  workplaceType: $enumDecodeNullable(
    _$WorkplaceTypeEnumMap,
    json['WorkplaceType'],
  ),
  salaryMin: (json['SalaryMin'] as num?)?.toDouble(),
  salaryMax: (json['SalaryMax'] as num?)?.toDouble(),
  languages: (json['Languages'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$JobLanguageEnumMap, e))
      .toList(),
  ownerId: json['OwnerId'] as String,
  expiresAt: json['ExpiresAt'] == null
      ? null
      : DateTime.parse(json['ExpiresAt'] as String),
);

Map<String, dynamic> _$JobListingAddRequestToJson(
  _JobListingAddRequest instance,
) => <String, dynamic>{
  'Type': _$JobTypeEnumMap[instance.type]!,
  'Title': instance.title,
  'Description': instance.description,
  'Name': instance.name,
  'Email': instance.email,
  'PhoneNumber': instance.phoneNumber,
  'BaseLocation': _$LocationPresetEnumMap[instance.baseLocation]!,
  'lon': instance.lon,
  'lat': instance.lat,
  'LocationTitle': instance.locationTitle,
  'ContactMethod': _$ContactMethodEnumMap[instance.contactMethod],
  'JobField': _$JobFieldEnumMap[instance.jobField],
  'ExperienceLevel': _$ExperienceLevelEnumMap[instance.experienceLevel],
  'EducationLevel': _$EducationLevelEnumMap[instance.educationLevel],
  'EmploymentType': _$EmploymentTypeEnumMap[instance.employmentType],
  'WorkplaceType': _$WorkplaceTypeEnumMap[instance.workplaceType],
  'SalaryMin': instance.salaryMin,
  'SalaryMax': instance.salaryMax,
  'Languages': instance.languages
      ?.map((e) => _$JobLanguageEnumMap[e]!)
      .toList(),
  'OwnerId': instance.ownerId,
  'ExpiresAt': instance.expiresAt?.toIso8601String(),
};

const _$JobTypeEnumMap = {
  JobType.seeker: 'Seeker',
  JobType.available: 'Available',
};

const _$LocationPresetEnumMap = {
  LocationPreset.beirut: 'Beirut',
  LocationPreset.jbeilMountLebanon: 'JbeilMountLebanon',
  LocationPreset.keserwanMountLebanon: 'KeserwanMountLebanon',
  LocationPreset.matnMountLebanon: 'MatnMountLebanon',
  LocationPreset.baabdaMountLebanon: 'BaabdaMountLebanon',
  LocationPreset.aleyMountLebanon: 'AleyMountLebanon',
  LocationPreset.choufMountLebanon: 'ChoufMountLebanon',
  LocationPreset.akkarNorthLebanon: 'AkkarNorthLebanon',
  LocationPreset.miniehDanniyehNorthLebanon: 'MiniehDanniyehNorthLebanon',
  LocationPreset.zghartaNorthLebanon: 'ZghartaNorthLebanon',
  LocationPreset.tripoliNorthLebanon: 'TripoliNorthLebanon',
  LocationPreset.kouraNorthLebanon: 'KouraNorthLebanon',
  LocationPreset.batrounNorthLebanon: 'BatrounNorthLebanon',
  LocationPreset.bcharreNorthLebanon: 'BcharreNorthLebanon',
  LocationPreset.saidaSouthLebanon: 'SaidaSouthLebanon',
  LocationPreset.jezzineSouthLebanon: 'JezzineSouthLebanon',
  LocationPreset.tyreSouthLebanon: 'TyreSouthLebanon',
  LocationPreset.zahleBeirqaa: 'ZahleBeirqaa',
  LocationPreset.westBeqaaBeirqaa: 'WestBeqaaBeirqaa',
  LocationPreset.rashayaBeirqaa: 'RashayaBeirqaa',
  LocationPreset.nabatiehNabatieh: 'NabatiehNabatieh',
  LocationPreset.marjeyounNabatieh: 'MarjeyounNabatieh',
  LocationPreset.hasbayaNabatieh: 'HasbayaNabatieh',
  LocationPreset.bintJbeilNabatieh: 'BintJbeilNabatieh',
  LocationPreset.baalbekBaalbekHermel: 'BaalbekBaalbekHermel',
  LocationPreset.hermelBaalbekHermel: 'HermelBaalbekHermel',
};

const _$ContactMethodEnumMap = {
  ContactMethod.phoneNumber: 'PhoneNumber',
  ContactMethod.inAppChat: 'InAppChat',
  ContactMethod.both: 'Both',
};

const _$JobFieldEnumMap = {
  JobField.accounting: 'Accounting',
  JobField.administration: 'Administration',
  JobField.agriculture: 'Agriculture',
  JobField.architecture: 'Architecture',
  JobField.automotive: 'Automotive',
  JobField.aviation: 'Aviation',
  JobField.banking: 'Banking',
  JobField.beauty: 'Beauty',
  JobField.businessDevelopment: 'BusinessDevelopment',
  JobField.callCenter: 'CallCenter',
  JobField.construction: 'Construction',
  JobField.consulting: 'Consulting',
  JobField.customerService: 'CustomerService',
  JobField.design: 'Design',
  JobField.education: 'Education',
  JobField.engineering: 'Engineering',
  JobField.events: 'Events',
  JobField.finance: 'Finance',
  JobField.healthcare: 'Healthcare',
  JobField.hospitality: 'Hospitality',
  JobField.humanResources: 'HumanResources',
  JobField.informationTechnology: 'InformationTechnology',
  JobField.insurance: 'Insurance',
  JobField.interiorDesign: 'InteriorDesign',
  JobField.journalism: 'Journalism',
  JobField.legal: 'Legal',
  JobField.logistics: 'Logistics',
  JobField.maintenance: 'Maintenance',
  JobField.management: 'Management',
  JobField.manufacturing: 'Manufacturing',
  JobField.marketing: 'Marketing',
  JobField.media: 'Media',
  JobField.ngO: 'NGO',
  JobField.oilAndGas: 'OilAndGas',
  JobField.pharmaceutical: 'Pharmaceutical',
  JobField.photography: 'Photography',
  JobField.publicRelations: 'PublicRelations',
  JobField.publishing: 'Publishing',
  JobField.qualityAssurance: 'QualityAssurance',
  JobField.realEstate: 'RealEstate',
  JobField.research: 'Research',
  JobField.restaurant: 'Restaurant',
  JobField.retail: 'Retail',
  JobField.sales: 'Sales',
  JobField.security: 'Security',
  JobField.socialServices: 'SocialServices',
  JobField.sports: 'Sports',
  JobField.telecommunications: 'Telecommunications',
  JobField.tourism: 'Tourism',
  JobField.training: 'Training',
  JobField.translation: 'Translation',
  JobField.transportation: 'Transportation',
  JobField.videoGameDevelopment: 'VideoGameDevelopment',
  JobField.warehousing: 'Warehousing',
  JobField.wholesale: 'Wholesale',
  JobField.other: 'Other',
};

const _$ExperienceLevelEnumMap = {
  ExperienceLevel.oneToTwoYears: 'OneToTwoYears',
  ExperienceLevel.twoToFiveYears: 'TwoToFiveYears',
  ExperienceLevel.fiveToTenYears: 'FiveToTenYears',
  ExperienceLevel.tenPlusYears: 'TenPlusYears',
  ExperienceLevel.noExperienceRequired: 'NoExperienceRequired',
};

const _$EducationLevelEnumMap = {
  EducationLevel.noEducationRequired: 'NoEducationRequired',
  EducationLevel.highSchool: 'HighSchool',
  EducationLevel.diploma: 'Diploma',
  EducationLevel.bachelors: 'Bachelors',
  EducationLevel.masters: 'Masters',
  EducationLevel.doctorate: 'Doctorate',
  EducationLevel.vocationalTraining: 'VocationalTraining',
  EducationLevel.professionalCertification: 'ProfessionalCertification',
};

const _$EmploymentTypeEnumMap = {
  EmploymentType.fullTime: 'FullTime',
  EmploymentType.partTime: 'PartTime',
  EmploymentType.contract: 'Contract',
  EmploymentType.freelance: 'Freelance',
  EmploymentType.internship: 'Internship',
  EmploymentType.temporary: 'Temporary',
  EmploymentType.volunteer: 'Volunteer',
  EmploymentType.shiftBased: 'ShiftBased',
  EmploymentType.commission: 'Commission',
};

const _$WorkplaceTypeEnumMap = {
  WorkplaceType.onSite: 'OnSite',
  WorkplaceType.remote: 'Remote',
  WorkplaceType.hybrid: 'Hybrid',
};

const _$JobLanguageEnumMap = {
  JobLanguage.arabic: 'Arabic',
  JobLanguage.english: 'English',
  JobLanguage.french: 'French',
};
