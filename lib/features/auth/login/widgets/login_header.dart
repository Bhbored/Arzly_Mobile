import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.screenWidth * 0.2,
          height: context.screenWidth * 0.2,
          constraints: const BoxConstraints(
            maxWidth: 100,
            maxHeight: 100,
            minWidth: 60,
            minHeight: 60,
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.06),
                blurRadius: 24,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Center(
            child: Icon(
              Icons.eco,
              size: context.screenWidth * 0.1,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        SizedBox(height: context.spaceMedium),
        Text(
          'Arzly',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: -2,
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        SizedBox(height: context.spaceSmall),
        Text(
          'Welcome back to the commons.',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
        ),
      ],
    );
  }
}
