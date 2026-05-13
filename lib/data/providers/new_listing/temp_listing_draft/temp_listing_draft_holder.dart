import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:arzly/core/enums/listing/listing_status.dart';
import 'package:arzly/core/enums/listing/location_label.dart';
import 'package:arzly/domain/entities/listing/listing.dart';
import 'package:arzly/domain/entities/pickup_location/pickup_location.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'temp_listing_draft_holder.g.dart';

const PickupLocation kListingDraftPickupPlaceholder = PickupLocation(
  id: '',
  userId: '',
  label: LocationLabel.home,
  address: '',
  lat: 0,
  lon: 0,
  isDefault: false,
);

Listing createEmptyDraftListing({
  required String categoryId,
  required String subcategoryId,
}) {
  final now = DateTime.now();
  return Listing(
    id: '',
    title: '',
    description: '',
    price: 0,
    status: ListingStatus.pending,
    primaryImageUrl: '',
    imagesUrl: const [],
    createdAt: now,
    name: '',
    phoneNumber: '',
    contactMethod: ContactMethod.phoneNumber,
    ownerId: '',
    categoryId: categoryId,
    subcategoryId: subcategoryId,
    pickupLocationId: '',
    pickupLocation: kListingDraftPickupPlaceholder,
    listingDetails: null,
  );
}

@Riverpod()
class TempListingDraftHolder extends _$TempListingDraftHolder {
  @override
  Listing build() => createEmptyDraftListing(categoryId: '', subcategoryId: '');

  void update(Listing Function(Listing current) transform) {
    state = transform(state);
  }

  void reset({required String categoryId, required String subcategoryId}) {
    state = createEmptyDraftListing(
      categoryId: categoryId,
      subcategoryId: subcategoryId,
    );
  }
}
