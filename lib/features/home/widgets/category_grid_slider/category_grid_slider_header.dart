import 'package:flutter/material.dart';

class CategoryGridSliderHeader extends StatelessWidget {
  final VoidCallback? onSeeAllPressed;

  const CategoryGridSliderHeader({super.key, this.onSeeAllPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Categories',
          style: Theme.of(
            context,
          ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        TextButton(
          onPressed: onSeeAllPressed ?? () {},
          child: Text(
            'See all',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.primary,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
