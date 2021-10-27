import 'package:flutter/material.dart';
import './swiper.dart';
import './panel.dart';
import './card.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: const [
        SwiperView(),
        PanelView(),
        CardView(),
      ],
    ));
  }
}
