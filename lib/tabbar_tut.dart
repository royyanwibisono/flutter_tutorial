// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TabBarTut extends StatelessWidget {
  const TabBarTut({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
        // indicatorColor: Colors.red,
        indicator: BoxDecoration(
            // backgroundBlendMode: BlendMode.colorDodge,
            color: Color.fromARGB(110, 250, 133, 0),
            border: Border(bottom: BorderSide(color: Colors.red, width: 5))),
        splashFactory: InkRipple.splashFactory,
        // overlayColor: MaterialStateProperty.resolveWith<Color?>(
        //   (Set<MaterialState> states) {
        //     return states.contains(MaterialState.focused) ? null : Colors.amber;
        //   },
        // ),
        tabs: <Widget>[
          Tab(
            icon: Icon(Icons.comment),
          ),
          Tab(
            icon: Icon(Icons.smart_toy),
          ),
          Tab(
            icon: Icon(Icons.computer),
          ),
          Tab(
            text: "News",
          )
        ]);
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text("Contoh Tab Bar"),
            bottom: /*myTabBar*/ PreferredSize(
              preferredSize:
                  Size.fromHeight(myTabBar.preferredSize.height * 1.5),
              child: Container(
                // color: Color.fromARGB(113, 255, 193, 7),
                child: myTabBar,
              ),
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("Tab 1"),
            ),
            Center(
              child: Text("Tab 2"),
            ),
            Center(
              child: Text("Tab 3"),
            ),
            Center(
              child: Text("Tab 4"),
            )
          ]),
        ));
  }
}
