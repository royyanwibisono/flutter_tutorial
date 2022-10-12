// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ResponsiveTut extends StatefulWidget {
  const ResponsiveTut({super.key});

  @override
  State<ResponsiveTut> createState() => _ResponsiveTutState();
}

class _ResponsiveTutState extends State<ResponsiveTut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Responsive App")),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(children: buildContainer())
            : Row(
                children: buildContainer(),
              ));
  }

  List<Widget> buildContainer() {
    return [
      Flexible(
        flex: 1,
        child: Container(
          color: Colors.red,
          // width: 100,
          // height: 100,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          color: Colors.yellow,
          // width: 100,
          // height: 100,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          color: Colors.green,
          // width: 100,
          // height: 100,
        ),
      ),
    ];
  }
}
