import 'package:flutter/material.dart';

class CatTabView extends StatelessWidget {
  const CatTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              TabBar(labelColor: Colors.black87, tabs: [
                Tab(
                  text: '不思議1號',
                ),
                Tab(
                  text: '不思議2號',
                ),
                Tab(
                  text: '不思議3號',
                )
              ]),
              Expanded(
                  child: TabBarView(
                children: [
                  Container(
                    color: Colors.red,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.orange,
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
