import 'package:arzly/core/enums/listing_owned/real_estate/commercial_feature.dart';

List<CommercialFeature> orderedCommercialFeatures(
  Iterable<CommercialFeature> features,
) {
  final list = features.toList();
  list.sort((a, b) => a.label.compareTo(b.label));
  return list;
}

String formatCommercialFeaturesSummary(List<CommercialFeature> features) {
  if (features.isEmpty) {
    return 'Choose features';
  }
  final ordered = orderedCommercialFeatures(features);
  if (ordered.length <= 2) {
    return ordered.map((e) => e.label).join(', ');
  }
  final rest = ordered.length - 2;
  final head = ordered.take(2).map((e) => e.label).join(', ');
  return '$head +$rest';
}
