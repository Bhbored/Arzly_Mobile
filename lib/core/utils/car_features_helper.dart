import 'package:arzly/core/enums/listing_owned/motors/car_feature.dart';
import 'package:flutter/material.dart';

const Map<String, List<String>> carFeatureGroups = {
  'Safety': [
    'ABS',
    'Airbags',
    'Parking Sensors',
    'Backup Camera',
    'Blind Spot Monitor',
    'Lane Departure Warning',
    'Forward Collision Warning',
    'Adaptive Cruise Control',
    'Traction Control',
    'Stability Control',
  ],
  'Comfort': [
    'Keyless Entry',
    'Push Button Start',
    'Heated Seats',
    'Cooled Seats',
    'Power Seats',
    'Memory Seats',
    'Heated Steering Wheel',
    'Sunroof',
    'Moonroof',
    'Panoramic Roof',
    'Leather Seats',
    'Dual Zone Climate Control',
    'Rear A/C Vents',
    'Cruise Control',
  ],
  'Infotainment': [
    'Touchscreen',
    'Navigation',
    'Bluetooth',
    'Apple CarPlay',
    'Android Auto',
    'USB Ports',
    'Wireless Charging',
    'Premium Audio',
    'Rear Entertainment',
  ],
  'Exterior': [
    'Alloy Wheels',
    'LED Headlights',
    'Fog Lights',
    'Roof Rails',
    'Spoiler',
    'Tinted Windows',
    'Power Mirrors',
    'Power Trunk',
  ],
  'Other': [
    'Remote Start',
    'Garage Door Opener',
    'Paddle Shifters',
    'Sport Mode',
    'Eco Mode',
    'Four Wheel Drive',
    'Diff Lock',
  ],
};

const Map<String, CarFeature> _carFeatureByLabel = {
  'ABS': CarFeature.aBS,
  'Airbags': CarFeature.airbags,
  'Parking Sensors': CarFeature.parkingSensors,
  'Backup Camera': CarFeature.backupCamera,
  'Blind Spot Monitor': CarFeature.blindSpotMonitor,
  'Lane Departure Warning': CarFeature.laneDepartureWarning,
  'Forward Collision Warning': CarFeature.forwardCollisionWarning,
  'Adaptive Cruise Control': CarFeature.adaptiveCruiseControl,
  'Traction Control': CarFeature.tractionControl,
  'Stability Control': CarFeature.stabilityControl,
  'Keyless Entry': CarFeature.keylessEntry,
  'Push Button Start': CarFeature.pushButtonStart,
  'Heated Seats': CarFeature.heatedSeats,
  'Cooled Seats': CarFeature.cooledSeats,
  'Power Seats': CarFeature.powerSeats,
  'Memory Seats': CarFeature.memorySeats,
  'Heated Steering Wheel': CarFeature.heatedSteeringWheel,
  'Sunroof': CarFeature.sunroof,
  'Moonroof': CarFeature.moonroof,
  'Panoramic Roof': CarFeature.panoramicRoof,
  'Leather Seats': CarFeature.leatherSeats,
  'Dual Zone Climate Control': CarFeature.dualZoneClimateControl,
  'Rear A/C Vents': CarFeature.rearACVents,
  'Cruise Control': CarFeature.cruiseControl,
  'Touchscreen': CarFeature.touchscreen,
  'Navigation': CarFeature.navigation,
  'Bluetooth': CarFeature.bluetooth,
  'Apple CarPlay': CarFeature.appleCarPlay,
  'Android Auto': CarFeature.androidAuto,
  'USB Ports': CarFeature.usbPorts,
  'Wireless Charging': CarFeature.wirelessCharging,
  'Premium Audio': CarFeature.premiumAudio,
  'Rear Entertainment': CarFeature.rearEntertainment,
  'Alloy Wheels': CarFeature.alloyWheels,
  'LED Headlights': CarFeature.lEDHeadlights,
  'Fog Lights': CarFeature.fogLights,
  'Roof Rails': CarFeature.roofRails,
  'Spoiler': CarFeature.spoiler,
  'Tinted Windows': CarFeature.tintedWindows,
  'Power Mirrors': CarFeature.powerMirrors,
  'Power Trunk': CarFeature.powerTrunk,
  'Remote Start': CarFeature.remoteStart,
  'Garage Door Opener': CarFeature.garageDoorOpener,
  'Paddle Shifters': CarFeature.paddleShifters,
  'Sport Mode': CarFeature.sportMode,
  'Eco Mode': CarFeature.ecoMode,
  'Four Wheel Drive': CarFeature.fourWheelDrive,
  'Diff Lock': CarFeature.diffLock,
};

const Map<CarFeature, String> _carFeatureLabels = {
  CarFeature.aBS: 'ABS',
  CarFeature.airbags: 'Airbags',
  CarFeature.parkingSensors: 'Parking Sensors',
  CarFeature.backupCamera: 'Backup Camera',
  CarFeature.blindSpotMonitor: 'Blind Spot Monitor',
  CarFeature.laneDepartureWarning: 'Lane Departure Warning',
  CarFeature.forwardCollisionWarning: 'Forward Collision Warning',
  CarFeature.adaptiveCruiseControl: 'Adaptive Cruise Control',
  CarFeature.tractionControl: 'Traction Control',
  CarFeature.stabilityControl: 'Stability Control',
  CarFeature.keylessEntry: 'Keyless Entry',
  CarFeature.pushButtonStart: 'Push Button Start',
  CarFeature.heatedSeats: 'Heated Seats',
  CarFeature.cooledSeats: 'Cooled Seats',
  CarFeature.powerSeats: 'Power Seats',
  CarFeature.memorySeats: 'Memory Seats',
  CarFeature.heatedSteeringWheel: 'Heated Steering Wheel',
  CarFeature.sunroof: 'Sunroof',
  CarFeature.moonroof: 'Moonroof',
  CarFeature.panoramicRoof: 'Panoramic Roof',
  CarFeature.leatherSeats: 'Leather Seats',
  CarFeature.dualZoneClimateControl: 'Dual Zone Climate Control',
  CarFeature.rearACVents: 'Rear A/C Vents',
  CarFeature.cruiseControl: 'Cruise Control',
  CarFeature.touchscreen: 'Touchscreen',
  CarFeature.navigation: 'Navigation',
  CarFeature.bluetooth: 'Bluetooth',
  CarFeature.appleCarPlay: 'Apple CarPlay',
  CarFeature.androidAuto: 'Android Auto',
  CarFeature.usbPorts: 'USB Ports',
  CarFeature.wirelessCharging: 'Wireless Charging',
  CarFeature.premiumAudio: 'Premium Audio',
  CarFeature.rearEntertainment: 'Rear Entertainment',
  CarFeature.alloyWheels: 'Alloy Wheels',
  CarFeature.lEDHeadlights: 'LED Headlights',
  CarFeature.fogLights: 'Fog Lights',
  CarFeature.roofRails: 'Roof Rails',
  CarFeature.spoiler: 'Spoiler',
  CarFeature.tintedWindows: 'Tinted Windows',
  CarFeature.powerMirrors: 'Power Mirrors',
  CarFeature.powerTrunk: 'Power Trunk',
  CarFeature.remoteStart: 'Remote Start',
  CarFeature.garageDoorOpener: 'Garage Door Opener',
  CarFeature.paddleShifters: 'Paddle Shifters',
  CarFeature.sportMode: 'Sport Mode',
  CarFeature.ecoMode: 'Eco Mode',
  CarFeature.fourWheelDrive: 'Four Wheel Drive',
  CarFeature.diffLock: 'Diff Lock',
};

const Map<CarFeature, IconData> _carFeatureIcons = {
  CarFeature.aBS: Icons.car_crash_outlined,
  CarFeature.airbags: Icons.airline_seat_recline_normal_outlined,
  CarFeature.parkingSensors: Icons.sensors_outlined,
  CarFeature.backupCamera: Icons.videocam_outlined,
  CarFeature.blindSpotMonitor: Icons.visibility_outlined,
  CarFeature.laneDepartureWarning: Icons.alt_route_outlined,
  CarFeature.forwardCollisionWarning: Icons.warning_amber_outlined,
  CarFeature.adaptiveCruiseControl: Icons.speed_outlined,
  CarFeature.tractionControl: Icons.tire_repair_outlined,
  CarFeature.stabilityControl: Icons.balance_outlined,
  CarFeature.keylessEntry: Icons.key_outlined,
  CarFeature.pushButtonStart: Icons.power_settings_new_outlined,
  CarFeature.heatedSeats: Icons.event_seat_outlined,
  CarFeature.cooledSeats: Icons.ac_unit_outlined,
  CarFeature.powerSeats: Icons.airline_seat_individual_suite_outlined,
  CarFeature.memorySeats: Icons.memory_outlined,
  CarFeature.heatedSteeringWheel: Icons.circle_outlined,
  CarFeature.sunroof: Icons.wb_sunny_outlined,
  CarFeature.moonroof: Icons.nightlight_outlined,
  CarFeature.panoramicRoof: Icons.roofing_outlined,
  CarFeature.leatherSeats: Icons.weekend_outlined,
  CarFeature.dualZoneClimateControl: Icons.thermostat_outlined,
  CarFeature.rearACVents: Icons.air_outlined,
  CarFeature.cruiseControl: Icons.directions_car_outlined,
  CarFeature.touchscreen: Icons.touch_app_outlined,
  CarFeature.navigation: Icons.map_outlined,
  CarFeature.bluetooth: Icons.bluetooth_outlined,
  CarFeature.appleCarPlay: Icons.phone_iphone_outlined,
  CarFeature.androidAuto: Icons.android_outlined,
  CarFeature.usbPorts: Icons.usb_outlined,
  CarFeature.wirelessCharging: Icons.battery_charging_full_outlined,
  CarFeature.premiumAudio: Icons.speaker_outlined,
  CarFeature.rearEntertainment: Icons.tv_outlined,
  CarFeature.alloyWheels: Icons.album_outlined,
  CarFeature.lEDHeadlights: Icons.light_mode_outlined,
  CarFeature.fogLights: Icons.foggy,
  CarFeature.roofRails: Icons.fence_outlined,
  CarFeature.spoiler: Icons.sports_motorsports_outlined,
  CarFeature.tintedWindows: Icons.window_outlined,
  CarFeature.powerMirrors: Icons.flip_outlined,
  CarFeature.powerTrunk: Icons.luggage_outlined,
  CarFeature.remoteStart: Icons.play_circle_outline,
  CarFeature.garageDoorOpener: Icons.garage_outlined,
  CarFeature.paddleShifters: Icons.swap_horiz_outlined,
  CarFeature.sportMode: Icons.flash_on_outlined,
  CarFeature.ecoMode: Icons.eco_outlined,
  CarFeature.fourWheelDrive: Icons.all_inclusive_outlined,
  CarFeature.diffLock: Icons.lock_outlined,
};

CarFeature? carFeatureFromLabel(String label) => _carFeatureByLabel[label];

String carFeatureLabel(CarFeature feature) =>
    _carFeatureLabels[feature] ?? feature.name;

IconData carFeatureIcon(CarFeature feature) =>
    _carFeatureIcons[feature] ?? Icons.star_outline_rounded;

List<CarFeature> orderedCarFeatures(Iterable<CarFeature> features) {
  final selected = features.toSet();
  final ordered = <CarFeature>[];
  for (final labels in carFeatureGroups.values) {
    for (final label in labels) {
      final feature = carFeatureFromLabel(label);
      if (feature != null && selected.contains(feature)) {
        ordered.add(feature);
      }
    }
  }
  return ordered;
}

String formatCarFeaturesSummary(List<CarFeature> features) {
  if (features.isEmpty) {
    return 'Choose extra features';
  }
  final ordered = orderedCarFeatures(features);
  if (ordered.length <= 2) {
    return ordered.map(carFeatureLabel).join(', ');
  }
  final remaining = ordered.length - 2;
  final head = ordered
      .take(2)
      .map(carFeatureLabel)
      .join(', ');
  return '$head + $remaining more';
}
