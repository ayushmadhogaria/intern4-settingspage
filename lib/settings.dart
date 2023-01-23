import 'package:flutter/material.dart';
import 'settings_body.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: settingsBody()),
    );
  }

  Widget settingsBody() => const SettingsBody();
}
