import 'package:flutter/material.dart';

class SettingsScreenHeader extends StatelessWidget {
  final VoidCallback onEditPressed;

  const SettingsScreenHeader({
    super.key,
    required this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: colors.secondaryContainer,
          child: Text(
            'JD',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: colors.onSecondaryContainer,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
        const SizedBox(width: 14),
        Expanded(
          child: Row(
            children: [
              Flexible(
                child: Text(
                  'Jane Doe',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 4),
              IconButton(
                onPressed: onEditPressed,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(
                  minWidth: 40,
                  minHeight: 40,
                ),
                visualDensity: VisualDensity.compact,
                icon: Icon(Icons.edit_outlined, color: colors.primary),
                tooltip: 'Edit',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
