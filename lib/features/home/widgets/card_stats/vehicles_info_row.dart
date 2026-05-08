import 'package:flutter/material.dart';

class VehiclesInfoRow extends StatelessWidget {
  final int year;
  final int kilometers;

  const VehiclesInfoRow({
    super.key,
    required this.year,
    required this.kilometers,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _VehicleInfoItem(
            icon: Icons.speed_outlined,
            label: '$kilometers km',
          ),
        ),
        Expanded(
          child: _VehicleInfoItem(
            icon: Icons.calendar_today_outlined,
            label: '$year',
          ),
        ),
      ],
    );
  }
}

class _VehicleInfoItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _VehicleInfoItem({required this.icon, required this.label});

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
