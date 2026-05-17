import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/utils/listing_browse_filter.dart';
import 'package:flutter/material.dart';

class ListingFilterOrderSection extends StatelessWidget {
  const ListingFilterOrderSection({
    super.key,
    required this.title,
    required this.selectedValue,
    required this.options,
    required this.onChanged,
  });

  final String title;
  final String selectedValue;
  final List<ListingBrowseOrderOption> options;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colors.onSurfaceVariant,
          ),
        ),
        SizedBox(height: context.spaceSmall * 0.5),
        ...options.map(
          (option) => ListTile(
            contentPadding: EdgeInsets.zero,
            visualDensity: VisualDensity.compact,
            title: Text(option.label),
            trailing: selectedValue == option.value
                ? Icon(Icons.check_rounded, color: colors.primary)
                : null,
            onTap: () => onChanged(option.value),
          ),
        ),
      ],
    );
  }
}
