import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class ListingBrowseSearchInput extends StatelessWidget {
  const ListingBrowseSearchInput({
    super.key,
    required this.controller,
    required this.focusNode,
    required this.hintText,
    this.onChanged,
    this.onSubmitted,
  });

  static bool shouldApplyOnChange(String value) => value.trim().length > 1;

  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onSubmitted;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Material(
      color: colors.surface,
      borderRadius: BorderRadius.circular(5),
      clipBehavior: Clip.antiAlias,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        autofocus: true,
        textInputAction: TextInputAction.search,
        onChanged: onChanged,
        onSubmitted: onSubmitted == null ? null : (_) => onSubmitted!(),
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: colors.onSurface,
            ),
        decoration: InputDecoration(
          isDense: true,
          filled: true,
          fillColor: colors.surface,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: colors.onSurfaceVariant.withValues(alpha: 0.7),
              ),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: colors.onSurfaceVariant.withValues(alpha: 0.75),
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: context.spaceSmall * 1.1,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: colors.outlineVariant.withValues(alpha: 0.6),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
              color: colors.outlineVariant.withValues(alpha: 0.6),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: colors.primary, width: 1.5),
          ),
        ),
      ),
    );
  }
}
