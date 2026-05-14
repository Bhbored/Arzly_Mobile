import 'package:arzly/core/enums/listing_owned/real_estate/room_feature.dart';

List<RoomFeature> orderedRoomFeatures(Iterable<RoomFeature> features) {
  final list = features.toList();
  list.sort((a, b) => a.label.compareTo(b.label));
  return list;
}

String formatRoomFeaturesSummary(List<RoomFeature> features) {
  if (features.isEmpty) {
    return 'Choose features';
  }
  final ordered = orderedRoomFeatures(features);
  if (ordered.length <= 2) {
    return ordered.map((e) => e.label).join(', ');
  }
  final rest = ordered.length - 2;
  final head = ordered.take(2).map((e) => e.label).join(', ');
  return '$head +$rest';
}
