import 'package:flutter/material.dart';
import './card.dart';

class CatCardOverview extends StatelessWidget {
  const CatCardOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardView(
                  iconName: Icons.food_bank_sharp,
                  // txt: "123",
                  title: "食物",
                ),
                CardView(
                  iconName: Icons.water_damage,
                  title: "水",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardView(
                  title: "鏟屎了嗎?",
                  iconName: Icons.clean_hands,
                ),
                CardView(
                  title: "看醫生",
                  iconName: Icons.health_and_safety,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
