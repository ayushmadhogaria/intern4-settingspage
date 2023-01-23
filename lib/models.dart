import 'package:flutter/material.dart';

class SettingsData {
  final String settingsImagePath;
  final String imageHeading;
  final String imageSubHeading;

  SettingsData(this.settingsImagePath, this.imageHeading, this.imageSubHeading);
}

final settingsArrayList = [
  SettingsData('assets/images/profile.png', 'John Doe', 'j.doe@gmail.com'),
];
