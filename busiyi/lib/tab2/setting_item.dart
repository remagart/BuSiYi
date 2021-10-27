import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  String title = '';
  Icon myIcon = const Icon(Icons.ac_unit_outlined);
  SettingItem(
      {Key? key,
      this.title = '',
      this.myIcon = const Icon(
        Icons.ac_unit,
        color: Colors.amber,
        size: 30.0,
      )})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8, top: 8),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
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
                        myIcon,
                        const SizedBox(width: 8),
                        Text(title),
                      ],
                    ),
                    const Positioned(
                        right: 0, child: Icon(Icons.arrow_forward_ios))
                  ],
                ))),
      ),
    );
  }
}
