// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomCardTut extends StatelessWidget {
  const CustomCardTut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Custom Card",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff8c062f),
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xfffe5788), Color(0xfff56d5d)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
        ),
        Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Card(
              elevation: 4,
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.05,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://t3.ftcdn.net/jpg/03/10/17/76/360_F_310177612_ZF5ucdsR1SEm76F9ydhfLzlotishG1Ug.jpg"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4),
                            topRight: Radius.circular(4)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2018/01/20/08/33/sunset-3094078_960_720.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20,
                        50 + MediaQuery.of(context).size.height * 0.35, 20, 20),
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Beutiful Sunset at Paddy Field",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xfff56d5d), fontSize: 25),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Posted on ",
                                    style: TextStyle(fontSize: 12)),
                                Text(" June 18, 2022",
                                    style: TextStyle(
                                        color: Color(0xfff56d5d), fontSize: 12))
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Spacer(flex: 10),
                              Icon(
                                Icons.thumb_up,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(flex: 1),
                              Text(
                                "99",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(flex: 5),
                              Icon(
                                Icons.comment,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Spacer(flex: 1),
                              Text(
                                "20",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(flex: 10)
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
