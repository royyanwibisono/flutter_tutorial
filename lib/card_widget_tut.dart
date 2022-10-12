import 'package:flutter/material.dart';

class CardWidgetTut extends StatefulWidget {
  const CardWidgetTut({super.key});

  @override
  State<CardWidgetTut> createState() => _CardWidgetTutState();
}

class _CardWidgetTutState extends State<CardWidgetTut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text("card widget"),
          backgroundColor: Colors.lightGreen,
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              buildCard(Icons.account_box, "Account Box"),
              buildCard(Icons.adb, "Android")
            ],
          ),
        ));
  }

//extracted method
  Card buildCard(IconData iconData, String text) {
    return Card(
      elevation: 3,
      child: Row(children: [
        Container(
          margin: EdgeInsets.all(5),
          child: Icon(
            iconData,
            color: Colors.green,
          ),
        ),
        Text(text)
      ]),
    );
  }
}
