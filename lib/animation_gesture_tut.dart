// ------Tutorial Animasi + Gesture-----
import 'package:flutter/material.dart';
import 'dart:math';

class AnimationGestureTut extends StatefulWidget {
  const AnimationGestureTut({super.key});

  @override
  State<AnimationGestureTut> createState() => _AnimationGestureTutState();
}

class _AnimationGestureTutState extends State<AnimationGestureTut> {
  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Latihan Animasi"),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {});
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              // color: Color.fromARGB(255, random.nextInt(256),
              //     random.nextInt(256), random.nextInt(256)),
              width: 50.0 + random.nextInt(151),
              height: 50.0 + random.nextInt(151),
              curve: Curves.easeInBack,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, random.nextInt(256),
                    random.nextInt(256), random.nextInt(256)),
                border:
                    Border.all(color: Colors.transparent, width: 0), // added
                borderRadius: BorderRadius.circular(4.0 + random.nextInt(30)),
              ),
            ),
          ),
        ));
  }
}
