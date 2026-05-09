import 'package:arzly/core/enums/listing/location_label.dart';

String pickupLabelDisplay(LocationLabel label) => switch (label) {
      LocationLabel.home => 'Home',
      LocationLabel.work => 'Work',
      LocationLabel.other => 'Other',
    };
