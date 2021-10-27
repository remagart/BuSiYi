import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  String title = '';
  // Icon myIcon = const Icon(Icons.ac_unit_outlined);
  IconData myIcon = Icons.ac_unit_outlined;
  double padTop = 4;
  SettingItem({
    Key? key,
    this.title = '',
    this.padTop = 4,
    this.myIcon = Icons.ac_unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: padTop),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white)),
        onPressed: () {
          print('123');
        },
        child: SizedBox(
            width: double.infinity,
            height: 50,
            child: Container(
                alignment: Alignment.centerLeft,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Icon(
                          myIcon,
                          color: Colors.black26,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          title,
                          style: TextStyle(color: Colors.black87),
                        ),
                      ],
                    ),
                    const Positioned(
                        right: 0,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black26,
                        ))
                  ],
                ))),
      ),
    );
  }
}
