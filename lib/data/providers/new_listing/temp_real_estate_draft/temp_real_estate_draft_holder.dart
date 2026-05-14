import 'package:arzly/domain/entities/listing/real_estate_details/real_estate_details.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'temp_real_estate_draft_holder.g.dart';

@Riverpod()
class TempRealEstateDraftHolder extends _$TempRealEstateDraftHolder {
  @override
  RealEstateDetails build() => const RealEstateDetails();

  void update(RealEstateDetails Function(RealEstateDetails current) transform) {
    state = transform(state);
  }

  void reset() {
    state = const RealEstateDetails();
  }
}
