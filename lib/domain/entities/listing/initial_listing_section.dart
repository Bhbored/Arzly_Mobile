import 'package:arzly/domain/entities/listing/listing.dart';

class InitialListingSection {
  const InitialListingSection({
    required this.subcategoryName,
    required this.listings,
  });

  final String subcategoryName;
  final List<Listing> listings;
}
