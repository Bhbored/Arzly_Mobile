import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/data/providers/language/language_provider.dart';
import 'package:arzly/data/providers/theme/theme_provider.dart';
import 'package:arzly/features/settings/sub_screens/language_selector_screen.dart';
import 'package:arzly/features/settings/sub_screens/saved_locations_screen.dart';
import 'package:arzly/features/settings/sub_screens/theme_selector_screen.dart';
import 'package:arzly/features/settings/widgets/shared/settings_descriptive_tile.dart';
import 'package:arzly/features/settings/widgets/shared/settings_screen_header.dart';
import 'package:arzly/features/settings/widgets/shared/settings_section_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  static String _themeTrailingLabel(ThemeMode mode) => switch (mode) {
    ThemeMode.light => 'Light',
    ThemeMode.dark => 'Dark',
    ThemeMode.system => 'System',
  };
  void _onEditProfile() {}

  void _navigateToThemeScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ThemeSelectorScreen()),
    );
  }

  void _navigateToLanguageScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LanguageSelectorScreen()),
    );
  }

  void _navigateToSavedLocations() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const SavedLocationsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeModeProvider);
    final languageLabel = ref.watch(languageProvider);
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colors.surface,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          context.paddingMedium,
          context.paddingExtraLarge + context.spaceMedium,
          context.paddingMedium,
          context.bottomPadding + 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SettingsScreenHeader(onEditPressed: _onEditProfile),
            SizedBox(height: context.spaceLarge),
            SettingsSectionCard(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SettingsDescriptiveTile(
                    icon: Icons.favorite_outline_rounded,
                    title: 'Saved Listings & Searches',
                    subtitle: 'Liked listings and saved searches.',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    indent: 56,
                    color: colors.outlineVariant.withValues(alpha: 0.5),
                  ),
                  SettingsDescriptiveTile(
                    icon: Icons.visibility_outlined,
                    title: 'Public Profile',
                    subtitle: 'Manage profile visibility.',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    indent: 56,
                    color: colors.outlineVariant.withValues(alpha: 0.5),
                  ),
                  SettingsDescriptiveTile(
                    icon: Icons.work_outline_rounded,
                    title: 'Job Hunting Profile',
                    subtitle: 'Skills and availability for employers.',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    indent: 56,
                    color: colors.outlineVariant.withValues(alpha: 0.5),
                  ),
                  SettingsDescriptiveTile(
                    icon: Icons.location_on_outlined,
                    title: 'Saved Locations',
                    subtitle: 'Areas for meetups and search filters.',
                    onTap: _navigateToSavedLocations,
                  ),
                ],
              ),
            ),
            SizedBox(height: context.spaceMedium),
            Text(
              'Settings',
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: colors.onSurfaceVariant,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: context.spaceSmall),
            SettingsSectionCard(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SettingsDescriptiveTile(
                    icon: Icons.help_outline_rounded,
                    title: 'Help & Support',
                    subtitle: 'FAQs and guides.',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    indent: 56,
                    color: colors.outlineVariant.withValues(alpha: 0.5),
                  ),
                  SettingsDescriptiveTile(
                    icon: Icons.headset_mic_outlined,
                    title: 'Customer Support',
                    subtitle: 'Contact the Arzly team.',
                    onTap: () {},
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    indent: 56,
                    color: colors.outlineVariant.withValues(alpha: 0.5),
                  ),
                  SettingsDescriptiveTile(
                    icon: Icons.language_rounded,
                    title: 'Language',
                    subtitle: 'App display language.',
                    trailingText: languageLabel,
                    onTap: _navigateToLanguageScreen,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    indent: 56,
                    color: colors.outlineVariant.withValues(alpha: 0.5),
                  ),
                  SettingsDescriptiveTile(
                    icon: Icons.palette_outlined,
                    title: 'Theme',
                    subtitle: 'Light, dark, or follow the system.',
                    trailingText: _themeTrailingLabel(themeMode),
                    onTap: _navigateToThemeScreen,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    indent: 56,
                    color: colors.outlineVariant.withValues(alpha: 0.5),
                  ),
                  SettingsDescriptiveTile(
                    icon: Icons.logout_rounded,
                    title: 'Logout',
                    subtitle: 'Sign out on this device.',
                    showChevron: false,
                    isDanger: true,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: context.spaceMedium),
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
