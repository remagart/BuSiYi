import 'package:flutter/material.dart';

class PanelView extends StatelessWidget {
  const PanelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          PanelItem(),
          PanelItem(),
          PanelItem(),
        ],
      ),
    );
  }
}

class PanelItem extends StatelessWidget {
  const PanelItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: const [
          Icon(
            Icons.store,
            size: 30,
          ),
          Text('超商購買')
        ],
      ),
    );
  }
}
