import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/auth/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                color: Theme.of(context).colorScheme.surfaceVariant.withValues(alpha: 0.3),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.paddingMedium),
              child: Text(
                'OR CONTINUE WITH',
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
            ),
            Expanded(
              child: Divider(
                color: Theme.of(context).colorScheme.surfaceVariant.withValues(alpha: 0.3),
              ),
            ),
          ],
        ),
        SizedBox(height: context.spaceMedium),
        Row(
          children: [
            Expanded(
              child: SocialLoginButton(
                icon: const Icon(Icons.g_mobiledata, size: 24),
                label: 'Google',
                onPressed: () {},
              ),
            ),
            SizedBox(width: context.paddingMedium),
            Expanded(
              child: SocialLoginButton(
                icon: const Icon(Icons.apple, size: 24),
                label: 'Apple',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
