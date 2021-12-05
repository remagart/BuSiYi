import 'package:flutter/material.dart';

class CatTabView extends StatelessWidget {
  const CatTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              const TabBar(labelColor: Colors.black87, tabs: [
                Tab(
                  text: '不思議1號',
                ),
                Tab(
                  text: '不思議2號',
                ),
                Tab(
                  text: '不思議3號',
                ),
                Tab(
                  text: '不思議4號',
                )
              ]),
              Expanded(
                  child: TabBarView(
                children: [
                  Container(
                    color: Colors.red,
                    child: Image.network(
                        'https://i.guim.co.uk/img/media/26392d05302e02f7bf4eb143bb84c8097d09144b/446_167_3683_2210/master/3683.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=49ed3252c0b2ffb49cf8b508892e452d'),
                  ),
                  Container(
                    color: Colors.blue,
                    child: Image.network(
                        'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png'),
                  ),
                  Container(
                    color: Colors.orange,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
