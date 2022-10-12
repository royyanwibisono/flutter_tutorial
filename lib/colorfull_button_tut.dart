// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class ColorfullBtnTut extends StatelessWidget {
  const ColorfullBtnTut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
            backgroundColor: Colors.red,
            flexibleSpace: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: Text(
                      "Colorfull Button Tuorial",
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const <Widget>[
            ColorfullButtonSub(
                mainColor: Colors.amber,
                secondColor: Colors.yellow,
                iconData: Icons.adb),
            ColorfullButtonSub(
                mainColor: Colors.blue,
                secondColor: Colors.blueGrey,
                iconData: Icons.mail),
            ColorfullButtonSub(
                mainColor: Colors.red,
                secondColor: Colors.pink,
                iconData: Icons.alarm)
          ],
        ),
      ),
    );
  }
}

class ColorfullButtonSub extends StatefulWidget {
  final Color mainColor, secondColor;
  final IconData iconData;

  const ColorfullButtonSub(
      {super.key,
      required this.mainColor,
      required this.secondColor,
      required this.iconData});

  @override
  State<ColorfullButtonSub> createState() => _ColorfullButtonSubState();
}

class _ColorfullButtonSubState extends State<ColorfullButtonSub> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: (22 / 7 / 4),
      child: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressed = !isPressed;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: Material(
          elevation: isPressed ? 2 : 10,
          borderRadius: BorderRadius.circular(15),
          shadowColor: isPressed ? widget.secondColor : widget.mainColor,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Stack(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                      color: isPressed ? widget.secondColor : widget.mainColor,
                      // borderRadius: BorderRadius.circular(15),
                      // elevation: 3,
                      child: Transform.rotate(
                          angle: -(22 / 7 / 4),
                          child: InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child:
                                  Icon(widget.iconData, color: Colors.white)))),
                ),
                Transform.translate(
                  offset: Offset(-30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color:
                          Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, -30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color:
                          Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color:
                          Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(30, 30),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color:
                          Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
