import 'package:arzly/domain/entities/listing/phones_details/phones_details.dart';
import 'package:arzly/domain/entities/listing/real_estate_details/real_estate_details.dart';
import 'package:arzly/domain/entities/listing/vehicles_details/vehicles_details.dart';

abstract final class ListingDetailsFilterCodec {
  static const _excludedKeys = {'listingId', 'referenceId', 'listingType'};

  static Map<String, dynamic>? toApiPayload(Object? details) {
    if (details == null) return null;

    final Map<String, dynamic> json = switch (details) {
      VehiclesDetails d => Map<String, dynamic>.from(d.toJson()),
      RealEstateDetails d => Map<String, dynamic>.from(d.toJson()),
      PhonesDetails d => Map<String, dynamic>.from(d.toJson()),
      _ => <String, dynamic>{},
    };

    json.removeWhere(
      (key, value) =>
          _excludedKeys.contains(key) ||
          value == null ||
          (value is List && value.isEmpty),
    );
    if (json.isEmpty) return null;
    return json;
  }

  static bool hasActiveDetails(Object? details) =>
      toApiPayload(details) != null;
}
