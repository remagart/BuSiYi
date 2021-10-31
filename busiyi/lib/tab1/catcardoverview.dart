import 'package:flutter/material.dart';
import './card.dart';

class CatCardOverview extends StatelessWidget {
  const CatCardOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CardView(),
              CardView(),
            ],
          ),
          Row(
            children: [
              CardView(),
              CardView(),
            ],
          ),
        ],
      ),
    );
  }
}
