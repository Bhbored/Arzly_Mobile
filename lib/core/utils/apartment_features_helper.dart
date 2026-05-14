import 'package:arzly/core/enums/listing_owned/real_estate/apartment_feature.dart';

List<ApartmentFeature> orderedApartmentFeatures(Iterable<ApartmentFeature> features) {
  final list = features.toList();
  list.sort((a, b) => a.label.compareTo(b.label));
  return list;
}

String formatApartmentFeaturesSummary(List<ApartmentFeature> features) {
  if (features.isEmpty) {
    return 'Choose features';
  }
  final ordered = orderedApartmentFeatures(features);
  if (ordered.length <= 2) {
    return ordered.map((e) => e.label).join(', ');
  }
  final rest = ordered.length - 2;
  final head = ordered.take(2).map((e) => e.label).join(', ');
  return '$head +$rest';
}
