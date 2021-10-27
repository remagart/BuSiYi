import 'package:flutter/material.dart';
import './setting_item.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(235, 235, 235, 1),
      child: Column(
        children: [
          SettingItem(
              title: '登入 / 註冊', padTop: 0, myIcon: Icons.access_time_sharp),
          SettingItem(
              title: '系統語言',
              padTop: 32,
              myIcon: Icons.accessible_forward_sharp),
          SettingItem(
              title: '關於我們', padTop: 32, myIcon: Icons.accessibility_new),
          SettingItem(title: '常見問題', myIcon: Icons.accessibility_new),
          SettingItem(title: '隱私權政策', myIcon: Icons.accessibility_new),
          const Text(
            'Copyright ©️ 2021 v0.0.1',
            style: TextStyle(color: Colors.black54, height: 2),
          )
        ],
      ),
    );
  }
}
