// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

//-----tutorial Flexible layot-------
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Flexible Layout")),
//         body: Column(
//           children: [
//             Flexible(
//                 flex: 1,
//                 child: Row(
//                   children: [
//                     Flexible(
//                         flex: 1,
//                         child: Container(
//                           margin: EdgeInsets.all(5),
//                           color: Colors.red,
//                         )),
//                     Flexible(
//                         flex: 1,
//                         child: Container(
//                           margin: EdgeInsets.all(5),
//                           color: Colors.green,
//                         )),
//                     Flexible(
//                         flex: 1,
//                         child: Container(
//                           margin: EdgeInsets.all(5),
//                           color: Colors.brown,
//                         ))
//                   ],
//                 )),
//             Flexible(
//                 flex: 2,
//                 child: Container(
//                   margin: EdgeInsets.all(5),
//                   color: Colors.yellow,
//                 )),
//             Flexible(
//                 flex: 1,
//                 child: Container(
//                   margin: EdgeInsets.all(5),
//                   color: Colors.blue,
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }


//-----ListView-----
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Latihan Listview'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   List<Widget> widgets = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Container(
//             padding: EdgeInsets.all(5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       _counter++;
//                       widgets.add(Text("data ke " + _counter.toString(),
//                           style: TextStyle(
//                             fontFamily: "Digital-7",
//                             fontSize: 30,
//                           )));
//                     });
//                   },
//                   child: Text('Tambah Data'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       if (widgets.length > 0) {
//                         widgets.removeLast();
//                         _counter--;
//                       }
//                     });
//                   },
//                   child: Text('Hapus Data'),
//                 )
//               ],
//             ),
//           ),
//           Container(
//               padding: EdgeInsets.all(5), child: Column(children: widgets)),
//         ],
//       ),
//     );
//   }
// }

// ------Text Style-------
// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Latihan Text Style")),
//         body: Center(
//             child: Text(
//           "ini adalah text",
//           style: TextStyle(
//             fontFamily: "Digital-7",
//             fontSize: 30,
//             // fontStyle: FontStyle.italic,
//             decoration: TextDecoration.overline,
//             decorationColor: Colors.red,
//             decorationThickness: 1,
//             decorationStyle: TextDecorationStyle.dotted,
//           ),
//         )),
//       ),
//     );
//   }
// }

// ------stateful widget tutorial------
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int number = 0;
//   void pressMyButton() {
//     setState(() {
//       number = number + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Stateful Widget")),
//         body: Center(
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//               Text(
//                 number.toString(),
//                 style: TextStyle(fontSize: 5 + number.toDouble()),
//               ),
//               ElevatedButton(
//                   onPressed: pressMyButton,
//                   style: ButtonStyle(
//                       // foregroundColor:
//                       //     MaterialStateProperty.all<Color>(Colors.white),
//                       // backgroundColor:
//                       //     MaterialStateProperty.all<Color>(Colors.red),
//                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(18.0),
//                     // side: BorderSide(color: Colors.red)
//                   ))),
//                   child: Text("Add Number")),
//             ])),
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:fl'

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   SplashScreenState createState() => SplashScreenState();
// }

// class SplashScreenState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         const Duration(seconds: 5),
//         () => Navigator.pushReplacement(context,
//             MaterialPageRoute(builder: (context) => const HomeScreen())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.yellow,
//         child: FlutterLogo(size: MediaQuery.of(context).size.height));
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Hello World!"),
//           backgroundColor: Colors.amber,
//         ),
//         body: Center(
//           child: Container(
//             color: Colors.amberAccent,
//             width: 150,
//             height: 55,
//             child: const Text(
//               "Flutter App, jhsgklsdjg jhsdfjkjkls rituidff afautib ddbasnwiew jdieefjii ijefkofwpj",
//               maxLines: 3,
//               overflow: TextOverflow.fade,
//               softWrap: true,
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                   color: Colors.white,
//                   fontStyle: FontStyle.italic,
//                   fontWeight: FontWeight.w700),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
