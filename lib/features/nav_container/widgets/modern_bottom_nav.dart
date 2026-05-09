import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/nav_container/widgets/nav_button.dart';
import 'package:flutter/material.dart';

class ModernBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const ModernBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.screenHeight * 0.14,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Main Navigation Bar
          Container(
            width: double.infinity,
            height: context.screenHeight * 0.09,
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).colorScheme.surface.withValues(alpha: 0.97),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(context.borderRadiusLarge + 6),
                topRight: Radius.circular(context.borderRadiusLarge + 6),
              ),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.1),
                  blurRadius: 32,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: NavButton(
                    icon: Icons.home_outlined,
                    activeIcon: Icons.home,
                    label: 'Home',
                    isActive: currentIndex == 0,
                    onTap: () => onTap(0),
                  ),
                ),
                Expanded(
                  child: NavButton(
                    icon: Icons.chat_bubble_outline_rounded,
                    activeIcon: Icons.chat_bubble_rounded,
                    label: 'Chats',
                    isActive: currentIndex == 1,
                    onTap: () => onTap(1),
                  ),
                ),

                // Center Placeholder for Alignment
                Expanded(
                  child: IgnorePointer(
                    child: Opacity(
                      opacity: 0,
                      child: NavButton(
                        icon: Icons.add_circle_outline_rounded,
                        activeIcon: Icons.add_circle_rounded,
                        label: 'Sell',
                        isActive: currentIndex == 2,
                        onTap: () {},
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: NavButton(
                    icon: Icons.inventory_2_outlined,
                    activeIcon: Icons.inventory_2,
                    label: 'My Posts',
                    isActive: currentIndex == 3,
                    onTap: () => onTap(3),
                  ),
                ),
                Expanded(
                  child: NavButton(
                    icon: Icons.person_outline,
                    activeIcon: Icons.person,
                    label: 'Profile',
                    isActive: currentIndex == 4,
                    onTap: () => onTap(4),
                  ),
                ),
              ],
            ),
          ),

          // Raised Center "Post" Circle + Perfectly Aligned Label
          Positioned(
            bottom: 0,
            child: GestureDetector(
              onTap: () => onTap(2),
              behavior: HitTestBehavior.opaque,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(
                            context,
                          ).colorScheme.primary.withValues(alpha: 0.3),
                          blurRadius: 16,
                          offset: const Offset(0, 8),
                        ),
                      ],
                      border: Border.all(
                        color: Theme.of(context).colorScheme.surface,
                        width: 4,
                      ),
                    ),
                    child: Icon(
                      currentIndex == 2
                          ? Icons.sell_rounded
                          : Icons.sell_outlined,
                      color: Theme.of(context).colorScheme.onPrimary,
                      size: 34,
                    ),
                  ),
                  SizedBox(height: context.spaceSmall / 2),
                  Padding(
                    padding: EdgeInsets.only(bottom: context.paddingSmall),
                    child: Text(
                      'Sell',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontSize: 12,
                        color: currentIndex == 2
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                        fontWeight: currentIndex == 2
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
