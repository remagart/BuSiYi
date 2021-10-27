import 'package:flutter/material.dart';
import './setting_item.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingItem(title: '123', myIcon: const Icon(Icons.access_time_sharp)),
        SettingItem(
            title: '456', myIcon: const Icon(Icons.accessible_forward_sharp)),
        SettingItem(title: '789', myIcon: const Icon(Icons.accessibility_new)),
      ],
    );
  }
}
