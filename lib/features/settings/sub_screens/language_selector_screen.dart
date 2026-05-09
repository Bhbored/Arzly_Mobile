import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/data/providers/language/language_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageSelectorScreen extends ConsumerWidget {
  static const Set<String> languageTitles = {'English', 'Arabic'};

  const LanguageSelectorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLabel = ref.watch(languageProvider);
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colors.surface,
      appBar: AppBar(
        backgroundColor: colors.surface,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: Text(
          'Language',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w700,
                color: colors.onSurface,
              ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: context.paddingMedium,
          vertical: context.spaceSmall,
        ),
        children: languageTitles.map((title) {
          final isSelected = title == selectedLabel;
          return ListTile(
            title: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
            ),
            trailing: isSelected
                ? Icon(Icons.check_rounded, color: colors.primary)
                : null,
            onTap: () {
              ref.read(languageProvider.notifier).setLanguageFromLabel(title);
            },
          );
        }).toList(),
      ),
    );
  }
}
