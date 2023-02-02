import 'package:flutter/material.dart';

import 'Splash Page.dart';
import 'Splash2.dart';
import 'Splash3.dart';
import 'Splash4.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splashPage1',
    routes: {
      '/': (context) => const MyApp(),
      'splashPage1': (context) => const Splash(),
      'splashPage2': (context) => const Splash2(),
      'splashPage3': (context) => const Splash3(),
      'splashPage4': (context) => const Splash4(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Main Page",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
