import 'package:arzly/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class HomeArzlyLogo extends StatelessWidget {
  const HomeArzlyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final iconSize = (context.screenWidth * 0.065).clamp(22.0, 30.0);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.eco_rounded,
          size: iconSize,
          color: colors.primary,
        ),
        SizedBox(width: context.paddingSmall),
        Text(
          'Arzly',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w800,
                letterSpacing: -0.8,
                color: colors.primary,
              ),
        ),
      ],
    );
  }
}
