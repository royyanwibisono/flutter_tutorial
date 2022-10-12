// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
            backgroundColor: Colors.amber,
            flexibleSpace: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Second Page , Appbar with Custom Height",
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          // fontWeight: FontWeight.w100,
                          fontFamily: "Darlington"),
                    ),
                  ),
                )
              ],
            )),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
