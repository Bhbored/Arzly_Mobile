import 'package:flutter/material.dart';

class RealEstateInfoRow extends StatelessWidget {
  final int bedroomsCount;
  final int bathroomsCount;
  final int areaInSquareMeters;

  const RealEstateInfoRow({
    super.key,
    required this.bedroomsCount,
    required this.bathroomsCount,
    required this.areaInSquareMeters,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _RealEstateInfoItem(
            icon: Icons.bed_outlined,
            label: '$bedroomsCount',
          ),
        ),
        Expanded(
          child: _RealEstateInfoItem(
            icon: Icons.bathroom_outlined,
            label: '$bathroomsCount',
          ),
        ),
        Expanded(
          child: _RealEstateInfoItem(
            icon: Icons.square_foot_outlined,
            label: '$areaInSquareMeters m²',
          ),
        ),
      ],
    );
  }
}

class _RealEstateInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _RealEstateInfoItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: 19,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
        const SizedBox(width: 7),
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
