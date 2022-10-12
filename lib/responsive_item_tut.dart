// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class ResponsiveItemTut extends StatefulWidget {
  const ResponsiveItemTut({super.key});

  @override
  State<ResponsiveItemTut> createState() => ResponsiveItemTutState();
}

class ResponsiveItemTutState extends State<ResponsiveItemTut> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Responsive Item App")),
        body: ListView(children: buildContainer()));
  }

  List<Row> createColList(int colCount) {
    List<String> data = List.filled(11, "test ", growable: false);
    var res = <Row>[];
    for (var i = 0; i < data.length; i += colCount) {
      List<Widget> _row = <Widget>[];
      for (var j = 0; j < colCount; j++) {
        int index = i + j;
        if (index < data.length) {
          _row.add(Flexible(
            flex: 1,
            child: SafeArea(
              child: Card(
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
                child: SizedBox(
                    height: 250, child: Center(child: Text(data[index]))),
              ),
            ),
          ));
        } else {
          _row.add(Flexible(
            flex: 1,
            child: Container(),
          ));
        }
      }
      res.add(Row(children: _row));
    }

    return res;
  }

  List<Widget> buildContainer() {
    return (MediaQuery.of(context).size.width < 600.0
        ? createColList(1)
        : MediaQuery.of(context).size.width < 850.0
            ? createColList(2)
            : MediaQuery.of(context).size.width < 1440
                ? createColList(3)
                : MediaQuery.of(context).size.width < 1920
                    ? createColList(4)
                    : createColList(6));
  }
}
