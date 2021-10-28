import 'package:flutter/material.dart';

class PanelView extends StatelessWidget {
  const PanelView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PanelItem(
            title: '超商購買',
            myIcon: Icons.event_busy,
          ),
          Container(
            width: 1,
            height: 40,
            color: Colors.black12,
          ),
          PanelItem(
            title: '銀行轉帳',
            myIcon: Icons.bakery_dining,
          ),
          Container(
            width: 1,
            height: 40,
            color: Colors.black12,
          ),
          PanelItem(
            title: '常見問題',
            myIcon: Icons.question_answer,
          ),
        ],
      ),
    );
  }
}

class PanelItem extends StatelessWidget {
  String title;
  IconData myIcon;
  PanelItem({Key? key, this.title = '', this.myIcon = Icons.ac_unit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClicked(title);
      },
      child: Container(
        child: Column(
          children: [
            Icon(
              myIcon,
              size: 30,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }

  onClicked(title) {
    switch (title) {
      case '超商購買':
        print('123');
        break;
      case '銀行轉帳':
        print('456');
        break;
      case '常見問題':
        print('789');
        break;
      default:
        print('000');
    }
  }
}
