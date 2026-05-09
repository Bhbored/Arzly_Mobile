import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? trailingText;
  final bool isDanger;
  final Widget? trailing;
  final VoidCallback? onTap;

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailingText,
    this.isDanger = false,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final fg = isDanger ? colors.error : colors.onSurface;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap ?? () {},
        child: SizedBox(
          height: 56,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(icon, color: fg),
                const SizedBox(width: 14),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: fg,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                switch (trailing) {
                  Widget trailingWidget => trailingWidget,
                  null => const SizedBox.shrink(),
                },
                if (trailing != null && trailingText != null)
                  const SizedBox(width: 8),
                if (trailingText != null)
                  Text(
                    trailingText!,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: colors.onSurfaceVariant,
                        ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
