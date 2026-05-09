import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/core/exceptions/api_exception.dart';
import 'package:arzly/data/providers/subcategory/subcategory_provider.dart';
import 'package:arzly/domain/entities/category/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SubcategoryScreen extends ConsumerWidget {
  final Category category;
  const SubcategoryScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subcategories = ref.watch(subcategoryProvider(category.id));
    final colors = Theme.of(context).colorScheme;

    void onBrowseAllPressed() {}

    return Scaffold(
      backgroundColor: colors.surfaceContainerLowest,
      appBar: AppBar(
        backgroundColor: colors.surfaceContainerLowest,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        titleSpacing: 0,
        title: Text(
          category.name,
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.paddingMedium,
          vertical: context.spaceSmall,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: onBrowseAllPressed,
              child: Text(
                'Browse all in ${category.name}',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            Expanded(
              child: subcategories.when(
                data: (items) => ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (_, index) {
                    final subcategory = items[index];
                    return ListTile(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: context.paddingSmall,
                      ),
                      title: Text(subcategory.name),
                      trailing: Icon(
                        Icons.chevron_right_rounded,
                        color: colors.onSurfaceVariant,
                      ),
                      onTap: () {},
                    );
                  },
                ),
                error: (error, stackTrace) {
                  final message = error is ApiException
                      ? error.userMessage
                      : error.toString();
                  return Center(child: Text(message));
                },
                loading: () => const Center(child: CircularProgressIndicator()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
