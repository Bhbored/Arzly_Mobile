import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/enums/job_listing/contact_method.dart';
import 'package:flutter/material.dart';

class ListingContactMethodField extends StatelessWidget {
  const ListingContactMethodField({
    super.key,
    required this.value,
    required this.onChanged,
    required this.showRequiredErrors,
  });

  final ContactMethod? value;
  final ValueChanged<ContactMethod?> onChanged;
  final bool showRequiredErrors;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final chipTheme = Theme.of(context).chipTheme;

    return FormField<ContactMethod>(
      key: ValueKey(value),
      initialValue: value,
      autovalidateMode: showRequiredErrors
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      validator: (v) =>
          v == null && showRequiredErrors ? 'Choose contact method' : null,
      builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: context.paddingSmall,
              runSpacing: context.spaceSmall,
              children: [
                for (final method in ContactMethod.values)
                  ChoiceChip(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        context.borderRadiusLarge,
                      ),
                    ),
                    label: Text(method.label),
                    selected: state.value == method,
                    showCheckmark: false,
                    visualDensity: VisualDensity.compact,
                    padding: EdgeInsets.symmetric(
                      horizontal: context.paddingMedium,
                      vertical: context.spaceSmall,
                    ),
                    selectedColor: scheme.secondaryContainer,
                    labelStyle: chipTheme.labelStyle?.copyWith(
                      color: state.value == method
                          ? scheme.onSecondaryContainer
                          : scheme.onSurface,
                      fontWeight: state.value == method
                          ? FontWeight.w600
                          : FontWeight.w500,
                    ),
                    side: BorderSide(
                      color: scheme.outline.withValues(alpha: 0.45),
                    ),
                    onSelected: (selected) {
                      final next = selected ? method : null;
                      state.didChange(next);
                      onChanged(next);
                    },
                  ),
              ],
            ),
            if (state.hasError) ...[
              SizedBox(height: context.spaceSmall * 0.5),
              Text(
                state.errorText!,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: scheme.error,
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}
