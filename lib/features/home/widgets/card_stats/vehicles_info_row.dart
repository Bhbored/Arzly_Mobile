import 'package:arzly/core/enums/listing_owned/motors/vehicle_condition.dart';
import 'package:flutter/material.dart';

class VehiclesInfoRow extends StatelessWidget {
  final int year;
  final int? kilometers;
  final VehicleCondition? condition;

  const VehiclesInfoRow({
    super.key,
    required this.year,
    this.kilometers,
    this.condition,
  });

  bool get _isNew => condition == VehicleCondition.new_;

  @override
  Widget build(BuildContext context) {
    if (_isNew) {
      return _VehicleInfoItem(
        icon: Icons.calendar_today_outlined,
        label: '$year - ${VehicleCondition.new_.label}',
      );
    }

    return Row(
      children: [
        Expanded(
          child: _VehicleInfoItem(
            icon: Icons.speed_outlined,
            label: '${kilometers ?? 0} km',
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
  final IconData? icon;
  final String label;

  const _VehicleInfoItem({
    this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (icon != null) ...[
          Icon(
            icon,
            size: 19,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 7),
        ],
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
