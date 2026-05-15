import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(alwaysCreate: true)
enum LocationLabel {
  @JsonValue('Home')
  home,
  @JsonValue('Work')
  work,
  @JsonValue('Other')
  other,
}

extension LocationLabelDisplay on LocationLabel {
  Map<IconData, String> get chipPresentation => switch (this) {
        LocationLabel.home => {Icons.home_outlined: 'Home'},
        LocationLabel.work => {Icons.work_outline_rounded: 'Work'},
        LocationLabel.other => {Icons.place_outlined: 'Other'},
      };
}
