import 'package:dhaniwis/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
    );
  }
}
//  appBar: AppBar(
//         title: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 240),
//               child: Icon(Icons.favorite),
//             ),
//             Icon(Icons.share_rounded),
//           ],
//         ),
//       ),