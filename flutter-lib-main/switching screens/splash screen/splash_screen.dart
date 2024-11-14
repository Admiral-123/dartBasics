import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_basics/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => StateSplashScreen();
}

class StateSplashScreen extends State<SplashScreen> {
  @override

  // called only once when the widget is first inserted into the widget tree, which makes it a good place to put any code that needs to run only once
  void initState() {
    super.initState();

    // Timer class is used for calling a function after a certain duration
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const MyHomePage(title: 'splashcreen done')));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.blue,
          child: const Center(
            child: Text(
              'myApp',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          )),
    );
  }
}


// in the main file's material app's home - give the splash screen's class

// initState() is like a "constructor" specifically designed for StatefulWidgets in Flutter