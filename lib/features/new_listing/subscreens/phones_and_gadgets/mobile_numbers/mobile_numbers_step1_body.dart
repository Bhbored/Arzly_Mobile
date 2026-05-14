import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/membership_type.dart';
import 'package:arzly/core/enums/listing_owned/phones_and_gadgets/mobile_operator.dart';
import 'package:arzly/data/providers/new_listing/temp_phones_gadgets_draft/temp_phones_gadgets_draft_holder.dart';
import 'package:arzly/features/new_listing/subscreens/real_estate/houses_for_sale/houses_for_sale_single_select_chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MobileNumbersStep1Body extends ConsumerWidget {
  const MobileNumbersStep1Body({
    super.key,
    required this.formKey,
    required this.requireFieldErrors,
  });

  final GlobalKey<FormState> formKey;
  final bool requireFieldErrors;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final details = ref.watch(tempPhonesGadgetsDraftHolderProvider);
    final scheme = Theme.of(context).colorScheme;
    final titleStyle = Theme.of(context).textTheme.titleSmall?.copyWith(
          fontWeight: FontWeight.w700,
          color: scheme.onSurface,
        );

    return Form(
      key: formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Operator', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                HousesForSaleSingleSelectChips<MobileOperator>(
                  values: MobileOperator.values,
                  selected: details.operator,
                  labelOf: (v) => v.label,
                  onChanged: (v) => ref
                      .read(tempPhonesGadgetsDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(operator: v)),
                ),
                if (requireFieldErrors && details.operator == null)
                  Padding(
                    padding: EdgeInsets.only(top: context.spaceSmall * 0.5),
                    child: Text(
                      'Choose operator',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.error,
                          ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: context.spaceSmall),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Membership type', style: titleStyle),
                SizedBox(height: context.spaceSmall),
                HousesForSaleSingleSelectChips<MembershipType>(
                  values: MembershipType.values,
                  selected: details.membershipType,
                  labelOf: (v) => v.label,
                  onChanged: (v) => ref
                      .read(tempPhonesGadgetsDraftHolderProvider.notifier)
                      .update((d) => d.copyWith(membershipType: v)),
                ),
                if (requireFieldErrors && details.membershipType == null)
                  Padding(
                    padding: EdgeInsets.only(top: context.spaceSmall * 0.5),
                    child: Text(
                      'Choose membership type',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: scheme.error,
                          ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
