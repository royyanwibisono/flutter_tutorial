// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/animation_gesture_tut.dart';
import 'package:flutter_tutorial/card_widget_tut.dart';
import 'package:flutter_tutorial/colorfull_button_tut.dart';
import 'package:flutter_tutorial/custom_button_tut.dart';
import 'package:flutter_tutorial/custom_cord_tut.dart';
import 'package:flutter_tutorial/heroes_clipRect_tut.dart';
import 'package:flutter_tutorial/hvscroll.dart';
import 'package:flutter_tutorial/multiplication_tablecell.dart';
import 'package:flutter_tutorial/responsive_item_tut.dart';
import 'package:flutter_tutorial/responsive_tut.dart';
import 'package:flutter_tutorial/second_page.dart';
import 'package:flutter_tutorial/stack_layout_image_tut.dart';
import 'package:flutter_tutorial/tabbar_tut.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.flag,
          color: Colors.white,
        ),
        title: Text(
          "Navigation",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Go to Second Page"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage()),
                );
              },
            ),
            SizedBox(height: 5),
            createBtn(context, "Card Widget", CardWidgetTut()),
            SizedBox(height: 5),
            createBtn(context, "Responsive App", ResponsiveTut()),
            SizedBox(height: 5),
            createBtn(context, "Responsive Item App", ResponsiveItemTut()),
            SizedBox(height: 5),
            createBtn(context, "Stack Layout & Image", StackLayoutImage()),
            SizedBox(height: 5),
            createBtn(context, "Animation & Gesture", AnimationGestureTut()),
            SizedBox(height: 5),
            createBtn(context, "Custom Button", CustomButtonTut()),
            SizedBox(height: 5),
            createBtn(context, "Custom Card", CustomCardTut()),
            SizedBox(height: 5),
            createBtn(context, "Hero Animation", HeroesClipRectTut()),
            SizedBox(height: 5),
            createBtn(context, "Tab Bar", TabBarTut()),
            SizedBox(height: 5),
            createBtn(context, "Colorfull Button", ColorfullBtnTut()),
            SizedBox(height: 5),
            createBtn(context, "Tabel", MultiplicationTable()),
            SizedBox(height: 5),
            createBtn(context, "HV scrollbar", TestPage()),
          ],
        ),
      ),
    );
  }

  ElevatedButton createBtn(BuildContext context, String text, Widget theclass) {
    return ElevatedButton(
      child: Text(text),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => (theclass)),
        );
      },
    );
  }
}
