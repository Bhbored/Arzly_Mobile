import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/new_listing/shared/inputs/car_picker_search_decoration.dart';
import 'package:flutter/material.dart';

class CarsForSaleStyleDropdownField<T extends Object> extends StatelessWidget {
  const CarsForSaleStyleDropdownField({
    super.key,
    required this.fieldsResetKey,
    required this.fieldSuffix,
    required this.value,
    required this.onChanged,
    required this.hintText,
    required this.validationMessage,
    required this.showRequiredErrors,
    required this.pageBg,
    required this.scheme,
    required this.menuRadius,
    required this.items,
    this.validator,
  });

  final Object? fieldsResetKey;
  final String fieldSuffix;
  final T? value;
  final ValueChanged<T?> onChanged;
  final String hintText;
  final String validationMessage;
  final bool showRequiredErrors;
  final String? Function(T?)? validator;
  final Color pageBg;
  final ColorScheme scheme;
  final BorderRadius menuRadius;
  final List<DropdownMenuItem<T>> items;

  @override
  Widget build(BuildContext context) {
    final hintStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w500,
          color: scheme.onSurfaceVariant,
          height: 1.2,
        );
    final valueStyle = Theme.of(context).textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.w600,
          color: scheme.onSurface,
          height: 1.2,
        );

    return FormField<T>(
      key: ValueKey(Object.hash(fieldsResetKey, fieldSuffix)),
      initialValue: value,
      autovalidateMode: showRequiredErrors
          ? AutovalidateMode.onUserInteraction
          : AutovalidateMode.disabled,
      validator:
          validator ??
          (v) => v == null && showRequiredErrors ? validationMessage : null,
      builder: (state) {
        final baseDecoration = carForSaleVersionFieldDecoration(
          context,
          pageBg,
          scheme,
          hintText: hintText,
        );
        return InputDecorator(
          decoration: baseDecoration.copyWith(
            hintText: null,
            errorText: state.hasError ? state.errorText : null,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: context.paddingMedium,
              vertical: context.spaceSmall * 0.40,
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final itemCount = items.length;
              return DropdownButtonHideUnderline(
                child: DropdownButton<T>(
                  padding: EdgeInsets.zero,
                  isExpanded: true,
                  borderRadius: menuRadius,
                  menuWidth: constraints.maxWidth,
                  itemHeight: kMinInteractiveDimension,
                  menuMaxHeight: context.carsForSaleDropdownMenuMaxHeight(
                    itemCount: itemCount,
                  ),
                  dropdownColor: scheme.surfaceContainerHigh,
                  elevation: 4,
                  alignment: AlignmentDirectional.bottomStart,
                  style: valueStyle,
                  hint: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(hintText, style: hintStyle),
                  ),
                  value: state.value,
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: scheme.onSurfaceVariant,
                    size: 22,
                  ),
                  items: items,
                  onChanged: (v) {
                    state.didChange(v);
                    onChanged(v);
                  },
                ),
              );
            },
          ),
        );
      },
    );
  }
}
