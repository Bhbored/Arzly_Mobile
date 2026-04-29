// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ServicesDetails _$ServicesDetailsFromJson(Map<String, dynamic> json) =>
    _ServicesDetails(
      listingId: json['listingId'] as String?,
      serviceType: $enumDecodeNullable(
        _$ServiceTypeEnumMap,
        json['serviceType'],
      ),
      homeServiceType: $enumDecodeNullable(
        _$HomeServiceTypeEnumMap,
        json['homeServiceType'],
      ),
      personalServiceType: $enumDecodeNullable(
        _$PersonalServiceTypeEnumMap,
        json['personalServiceType'],
      ),
      professionalServiceType: $enumDecodeNullable(
        _$ProfessionalServiceTypeEnumMap,
        json['professionalServiceType'],
      ),
      eventServiceType: $enumDecodeNullable(
        _$EventServiceTypeEnumMap,
        json['eventServiceType'],
      ),
      transportServiceType: $enumDecodeNullable(
        _$TransportServiceTypeEnumMap,
        json['transportServiceType'],
      ),
      otherServiceType: $enumDecodeNullable(
        _$OtherServiceTypeEnumMap,
        json['otherServiceType'],
      ),
    );

Map<String, dynamic> _$ServicesDetailsToJson(_ServicesDetails instance) =>
    <String, dynamic>{
      'listingId': instance.listingId,
      'serviceType': _$ServiceTypeEnumMap[instance.serviceType],
      'homeServiceType': _$HomeServiceTypeEnumMap[instance.homeServiceType],
      'personalServiceType':
          _$PersonalServiceTypeEnumMap[instance.personalServiceType],
      'professionalServiceType':
          _$ProfessionalServiceTypeEnumMap[instance.professionalServiceType],
      'eventServiceType': _$EventServiceTypeEnumMap[instance.eventServiceType],
      'transportServiceType':
          _$TransportServiceTypeEnumMap[instance.transportServiceType],
      'otherServiceType': _$OtherServiceTypeEnumMap[instance.otherServiceType],
    };

const _$ServiceTypeEnumMap = {
  ServiceType.offering: 'Offering',
  ServiceType.requesting: 'Requesting',
};

const _$HomeServiceTypeEnumMap = {
  HomeServiceType.cleaning: 'Cleaning',
  HomeServiceType.moving: 'Moving',
  HomeServiceType.plumbing: 'Plumbing',
  HomeServiceType.electrical: 'Electrical',
  HomeServiceType.painting: 'Painting',
  HomeServiceType.carpentry: 'Carpentry',
  HomeServiceType.gardening: 'Gardening',
  HomeServiceType.pestControl: 'PestControl',
  HomeServiceType.acRepair: 'ACRepair',
  HomeServiceType.other: 'Other',
};

const _$PersonalServiceTypeEnumMap = {
  PersonalServiceType.tutoring: 'Tutoring',
  PersonalServiceType.personalTraining: 'PersonalTraining',
  PersonalServiceType.beautyServices: 'BeautyServices',
  PersonalServiceType.massage: 'Massage',
  PersonalServiceType.photography: 'Photography',
  PersonalServiceType.videography: 'Videography',
  PersonalServiceType.catering: 'Catering',
  PersonalServiceType.baking: 'Baking',
  PersonalServiceType.tailoring: 'Tailoring',
  PersonalServiceType.other: 'Other',
};

const _$ProfessionalServiceTypeEnumMap = {
  ProfessionalServiceType.graphicDesign: 'GraphicDesign',
  ProfessionalServiceType.webDevelopment: 'WebDevelopment',
  ProfessionalServiceType.translation: 'Translation',
  ProfessionalServiceType.writing: 'Writing',
  ProfessionalServiceType.accounting: 'Accounting',
  ProfessionalServiceType.legalServices: 'LegalServices',
  ProfessionalServiceType.consulting: 'Consulting',
  ProfessionalServiceType.other: 'Other',
};

const _$EventServiceTypeEnumMap = {
  EventServiceType.dJ: 'DJ',
  EventServiceType.eventPlanning: 'EventPlanning',
  EventServiceType.decoration: 'Decoration',
  EventServiceType.soundSystem: 'SoundSystem',
  EventServiceType.other: 'Other',
};

const _$TransportServiceTypeEnumMap = {
  TransportServiceType.driver: 'Driver',
  TransportServiceType.delivery: 'Delivery',
  TransportServiceType.carRepair: 'CarRepair',
  TransportServiceType.towing: 'Towing',
  TransportServiceType.other: 'Other',
};

const _$OtherServiceTypeEnumMap = {
  OtherServiceType.petSitting: 'PetSitting',
  OtherServiceType.babySitting: 'BabySitting',
  OtherServiceType.elderlyCare: 'ElderlyCare',
  OtherServiceType.other: 'Other',
};
