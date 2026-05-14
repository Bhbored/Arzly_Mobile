import 'package:arzly/core/constants/app_sizes.dart';
import 'package:arzly/features/new_listing/subscreens/vehicles/pickers/models/car_brand_selection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

enum CarsForSaleBrandAvatarPlaceholderKind {
  car,
  motorcycle,
  truck,
}

class CarsForSaleBrandAvatar extends StatelessWidget {
  const CarsForSaleBrandAvatar({
    super.key,
    required this.brand,
    this.placeholderKind = CarsForSaleBrandAvatarPlaceholderKind.car,
  });

  final CarBrandSelection? brand;
  final CarsForSaleBrandAvatarPlaceholderKind placeholderKind;

  static double leadingExtent(BuildContext context) {
    final size = context.screenWidth * 0.14;
    return size.clamp(48, 56);
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final side = leadingExtent(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: ColoredBox(
        color: scheme.surfaceContainerLow,
        child: SizedBox(
          width: side,
          height: side,
          child: _shouldShowBrandLogo(brand)
              ? CachedNetworkImage(
                  imageUrl: brand!.logoUrl,
                  fit: BoxFit.contain,
                  fadeInDuration: const Duration(milliseconds: 200),
                  placeholder: (context, url) => Center(
                    child: SizedBox(
                      width: 15,
                      height: 15,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: scheme.primary,
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => Icon(
                    Icons.broken_image_outlined,
                    color: scheme.onSurfaceVariant,
                  ),
                )
              : Center(
                  child: Icon(
                    switch (placeholderKind) {
                      CarsForSaleBrandAvatarPlaceholderKind.motorcycle =>
                        Icons.two_wheeler_outlined,
                      CarsForSaleBrandAvatarPlaceholderKind.truck =>
                        Icons.local_shipping_outlined,
                      CarsForSaleBrandAvatarPlaceholderKind.car =>
                        Icons.directions_car_outlined,
                    },
                    color: scheme.onSurfaceVariant,
                  ),
                ),
        ),
      ),
    );
  }
}

bool _shouldShowBrandLogo(CarBrandSelection? brand) {
  if (brand == null) return false;
  return brand.logoUrl.trim().isNotEmpty;
}
