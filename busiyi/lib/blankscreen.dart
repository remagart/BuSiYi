import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  Color color;
  PlaceholderWidget({Key? key, this.color = Colors.blue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
