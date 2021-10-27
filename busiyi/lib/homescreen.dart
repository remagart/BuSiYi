import 'package:flutter/material.dart';
import 'blankscreen.dart';
import './tab2/settingscreen.dart';

class Home extends StatefulWidget {
  @override
  State createState() {
    return _HomeState();
  }
}

class _HomeState extends State {
  int _currentIndex = 0;
  final List _children = [
    PlaceholderWidget(color: Colors.white),
    PlaceholderWidget(color: Colors.deepOrange),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('123456'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
