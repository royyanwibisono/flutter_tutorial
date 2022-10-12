// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controller = TextEditingController(text: "");
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeeeeee),
        body: Stack(children: [
          Positioned(
            right: -getSmallDiameter(context) / 3,
            top: -getSmallDiameter(context) / 3,
            child: Container(
              width: getSmallDiameter(context),
              height: getSmallDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.lightBlueAccent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),
          Positioned(
            left: -getBigDiameter(context) / 4,
            top: -getBigDiameter(context) / 4,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.lightBlueAccent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Center(
                child: Text(
                  "Tuna Tech",
                  style: TextStyle(
                      fontFamily: "Darlington",
                      fontSize: 50,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            right: -getBigDiameter(context) / 2,
            bottom: -getBigDiameter(context) / 2,
            child: Container(
              width: getBigDiameter(context),
              height: getBigDiameter(context),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(120, 158, 158, 158)),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(children: [
              Card(
                // decoration: BoxDecoration(
                //     color: Colors.white,
                //     border: Border.all(color: Colors.grey),
                //     borderRadius: BorderRadius.circular(5)),
                margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                // padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                // color: Color.fromARGB(255, 224, 224, 222),
                elevation: 3,
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(Icons.arrow_forward_ios),
                            suffixIcon: Icon(Icons.check),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(8)),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.green),
                            // hintText: "hint text",
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blueAccent)),
                            prefixIcon: Icon(Icons.email, color: Colors.green)),
                        controller: controller,
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      Text(controller.text),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: Icon(Icons.arrow_forward_ios),
                            suffixIcon: Icon(Icons.check),
                            // border: OutlineInputBorder(
                            //     borderRadius: BorderRadius.circular(8)),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Colors.purple),
                            // hintText: "hint text",
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blueAccent)),
                            prefixIcon: Icon(Icons.key, color: Colors.purple)),
                      ),
                      SizedBox(height: 25),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 10),
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(color: Colors.red, fontSize: 11),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 10, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 35,
                              child: ElevatedButton(
                                child: Text("Sign In"),
                                onPressed: () async {
                                  Future.delayed(Duration(seconds: 1), () {
                                    setState(() {
                                      Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MainPage()));
                                    });
                                  });
                                },
                              ),
                            ),
                            FloatingActionButton(
                              heroTag: "btnGgl",
                              onPressed: () {},
                              mini: true,
                              backgroundColor: Colors.white,
                              elevation: 2,
                              child: Image(
                                  image: AssetImage("images/google_logo.png")),
                            ),
                            FloatingActionButton(
                              heroTag: "btnTwt",
                              onPressed: () {},
                              mini: true,
                              backgroundColor: Colors.white,
                              elevation: 2,
                              child: Image(
                                  image: AssetImage("images/twitter_logo.png")),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("DON'T HAVE AN ACCOUNT?   ",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.green,
                          fontWeight: FontWeight.w500)),
                  Text("SIGN UP",
                      style: TextStyle(
                          fontSize: 11,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500)),
                ],
              )
            ]),
          ),
        ]));
  }
}
