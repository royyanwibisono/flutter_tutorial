// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HeroesClipRectTut extends StatelessWidget {
  const HeroesClipRectTut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 163, 0, 0),
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Latihan Hero Animation",
            style: TextStyle(color: Colors.white),
          )),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SubHeroesClipRectTut()),
          );
        },
        child: Hero(
          tag: "pp",
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image(fit: BoxFit.cover, image: NetworkImage(
                  // "https://thumb.intipseleb.com/media/frontend/thumbs3/2020/05/20/5ec4b0e4d0943-soodam-secret-number_1265_711.jpeg"
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqMi2LQj9_czU8JN90Se5HF_W87SDrDCLdsQ&usqp=CAU")),
            ),
          ),
        ),
      ),
    );
  }
}

class SubHeroesClipRectTut extends StatelessWidget {
  const SubHeroesClipRectTut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 163, 0, 0),
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Latihan Hero Animation",
            style: TextStyle(color: Colors.white),
          )),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: "pp",
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                width: 300,
                height: 300,
                child: Image(fit: BoxFit.cover, image: NetworkImage(
                    // "https://thumb.intipseleb.com/media/frontend/thumbs3/2020/05/20/5ec4b0e4d0943-soodam-secret-number_1265_711.jpeg"
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqMi2LQj9_czU8JN90Se5HF_W87SDrDCLdsQ&usqp=CAU")),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
