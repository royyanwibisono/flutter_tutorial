// -------tutorial Stack layout, align, image, spacer-----CardWidgetTut
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StackLayoutImage extends StatelessWidget {
  const StackLayoutImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Layout")),
      body: Stack(
        children: [
          Column(
            children: [
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ))
                    ],
                  )),
              Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ))
                    ],
                  ))
            ],
          ),
          ListView(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ini adalah text yang ada di tengah stack.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ini adalah text yang ada di tengah stack.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ini adalah text yang ada di tengah stack.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ini adalah text yang ada di tengah stack.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ini adalah text yang ada di tengah stack.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ini adalah text yang ada di tengah stack.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ini adalah text yang ada di tengah stack.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ini adalah text yang ada di tengah stack.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ini adalah text yang ada di tengah stack.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "Ini adalah text yang ada di tengah stack.",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
          Align(
              // alignment: Alignment.bottomCenter,
              alignment: Alignment(0, 0.9),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back"))),
          Center(
            child: Container(
              color: Colors.black,
              width: 200,
              height: 200,
              padding: EdgeInsets.all(3),
              child: Image(
                // image: AssetImage("images/pants.webp"),
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqMi2LQj9_czU8JN90Se5HF_W87SDrDCLdsQ&usqp=CAU"),
                fit: BoxFit.contain,
                repeat: ImageRepeat.repeat,
              ),
            ),
          ),
          Row(
            children: [
              Spacer(flex: 1),
              Container(width: 80, height: 80, color: Colors.red),
              Spacer(flex: 2),
              Container(width: 80, height: 80, color: Colors.yellow),
              Spacer(flex: 2),
              Container(width: 80, height: 80, color: Colors.green),
              Spacer(flex: 1)
            ],
          )
        ],
      ),
    );
  }
}
