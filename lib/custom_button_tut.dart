// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class CustomButtonTut extends StatelessWidget {
  const CustomButtonTut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Button"),
      ),
      body: Center(
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () {},
            child: Text("Default"),
          ),
          Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 180,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      colors: [Colors.purple, Colors.pink],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Center(
                      child: Text(
                        " MyButton ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )),
            ),
          )
        ]),
      ),
    );
  }
}
