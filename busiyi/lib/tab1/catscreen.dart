import 'package:flutter/material.dart';
import './cattabview.dart';
import './catcardoverview.dart';

class CatScreen extends StatelessWidget {
  const CatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 300,
        // height: 500,
        // color: Colors.yellow,
        child: Column(
      children: const [
        CatTabView(),
        CatCardOverview(),
      ],
    ));
  }
}
