import 'package:arzly/domain/entities/category/category.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryListAvatar extends StatelessWidget {
  final Category category;

  const CategoryListAvatar({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final imageUrl = category.imageUrl;
    final avatarBg = colors.primaryContainer.withValues(alpha: 0.5);
    final avatarInnerBg = colors.secondaryContainer.withValues(alpha: 0.45);
    final avatarBorder = colors.primary.withValues(alpha: 0.5);

    return Container(
      width: 54,
      height: 54,
      padding: const EdgeInsets.all(1.5),
      decoration: BoxDecoration(shape: BoxShape.circle, color: avatarBorder),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: avatarBg),
        child: ClipOval(
          child: Container(
            color: avatarInnerBg,
            alignment: Alignment.center,
            child: imageUrl != null && imageUrl.isNotEmpty
                ? ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 50,
                      maxHeight: 50,
                    ),
                    child: FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: imageUrl,
                      fit: BoxFit.contain,
                      fadeInDuration: const Duration(milliseconds: 250),
                      imageErrorBuilder: (_, error, stackTrace) =>
                          _fallbackIcon(context),
                    ),
                  )
                : _fallbackIcon(context),
          ),
        ),
      ),
    );
  }

  Widget _fallbackIcon(BuildContext context) {
    return Container(
      color: Theme.of(
        context,
      ).colorScheme.secondaryContainer.withValues(alpha: 0.45),
      alignment: Alignment.center,
      child: Icon(
        Icons.park_rounded,
        size: 20,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
    );
  }
}
