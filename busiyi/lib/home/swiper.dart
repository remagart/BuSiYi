import 'package:flutter/material.dart';

class SwiperView extends StatelessWidget {
  const SwiperView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(
          'https://kitcat.com.sg/wp-content/uploads/2020/07/Kit-Cat.png'),
    );
  }
}
