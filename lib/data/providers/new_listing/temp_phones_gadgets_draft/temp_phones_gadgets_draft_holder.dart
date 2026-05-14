import 'package:arzly/domain/entities/listing/phones_details/phones_details.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'temp_phones_gadgets_draft_holder.g.dart';

@Riverpod()
class TempPhonesGadgetsDraftHolder extends _$TempPhonesGadgetsDraftHolder {
  @override
  PhonesDetails build() => const PhonesDetails();

  void update(PhonesDetails Function(PhonesDetails current) transform) {
    state = transform(state);
  }

  void reset() {
    state = const PhonesDetails();
  }
}
