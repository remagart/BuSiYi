import 'package:flutter/material.dart';
import 'dart:ui';

class CardView extends StatelessWidget {
  IconData iconName;
  String title;
  String txt;
  CardView(
      {Key? key, this.title = "", this.iconName = Icons.ac_unit, this.txt = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var SCREEN_WIDTH = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.blue,
      width: (SCREEN_WIDTH - 32 - 16) / 2,
      height: 50,
      child: Column(
        children: [
          Container(
            child: Row(
              children: [Icon(iconName), Text(title)],
            ),
          ),
          Text(txt)
        ],
      ),
    );
  }
}
