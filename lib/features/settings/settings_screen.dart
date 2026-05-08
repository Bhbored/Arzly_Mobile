import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/settings/widgets/settings_profile_section.dart';
import 'package:arzly/features/settings/widgets/settings_stats_row.dart';
import 'package:arzly/features/settings/widgets/settings_tile.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.surface,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          context.paddingMedium,
          context.spaceMedium,
          context.paddingMedium,
          context.bottomPadding + 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: SettingsProfileSection()),
            SizedBox(height: context.spaceLarge),
            const SettingsStatsRow(),
            SizedBox(height: context.spaceMedium),
            _SectionCard(
              child: Column(
                children: const [
                  SettingsTile(
                    icon: Icons.notifications_outlined,
                    title: 'Notifications',
                  ),
                  SettingsTile(
                    icon: Icons.language_rounded,
                    title: 'Language',
                    trailingText: 'English',
                  ),
                  SettingsTile(
                    icon: Icons.palette_outlined,
                    title: 'Theme',
                    trailingText: 'System',
                  ),
                  SettingsTile(
                    icon: Icons.lock_outline_rounded,
                    title: 'Privacy',
                  ),
                  SettingsTile(icon: Icons.help_outline_rounded, title: 'Help'),
                ],
              ),
            ),
            SizedBox(height: context.spaceSmall),
            _SectionCard(
              child: Column(
                children: [
                  const SettingsTile(
                    icon: Icons.logout_rounded,
                    title: 'Logout',
                    isDanger: true,
                  ),
                ],
              ),
            ),
            SizedBox(height: context.spaceLarge),
            Center(
              child: Column(
                children: [
                  Text(
                    'Arzly v1.0 • Built in Lebanon',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(height: context.spaceSmall * 0.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () {}, child: const Text('Terms')),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Privacy'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final Widget child;

  const _SectionCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(16),
      ),
      clipBehavior: Clip.antiAlias,
      child: child,
    );
  }
}
