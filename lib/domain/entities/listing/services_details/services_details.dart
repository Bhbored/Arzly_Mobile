import 'package:arzly/core/enums/listing_owned/services_details/event_service_type.dart';
import 'package:arzly/core/enums/listing_owned/services_details/home_service_type.dart';
import 'package:arzly/core/enums/listing_owned/services_details/other_service_type.dart';
import 'package:arzly/core/enums/listing_owned/services_details/personal_service_type.dart';
import 'package:arzly/core/enums/listing_owned/services_details/professional_service_type.dart';
import 'package:arzly/core/enums/listing_owned/services_details/service_type.dart';
import 'package:arzly/core/enums/listing_owned/services_details/transport_service_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'services_details.freezed.dart';
part 'services_details.g.dart';

@freezed
sealed class ServicesDetails with _$ServicesDetails {
  const factory ServicesDetails({
    String? listingId,
    ServiceType? serviceType,
    HomeServiceType? homeServiceType,
    PersonalServiceType? personalServiceType,
    ProfessionalServiceType? professionalServiceType,
    EventServiceType? eventServiceType,
    TransportServiceType? transportServiceType,
    OtherServiceType? otherServiceType,
  }) = _ServicesDetails;

  factory ServicesDetails.fromJson(Map<String, dynamic> json) =>
      _$ServicesDetailsFromJson(json);
}
