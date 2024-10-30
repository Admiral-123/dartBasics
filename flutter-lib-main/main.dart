// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return CupertinoApp(); // for ios device
    return MaterialApp(
      // for android

      title: 'NewApp', // title of app
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor:
                  Color.fromARGB(255, 90, 181, 255))), // theme of app
      debugShowCheckedModeBanner: false,
      home: const DashBoardScreen(), // homepage of the app
    );
  }
}

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // Scaffold widget is a basic visual layout structure for Material Design applications
    return Scaffold(
      appBar: AppBar(
          title: const Text('Dashboard', style: TextStyle(fontSize: 14))),
      body: Container(
        color: Colors.amberAccent,
      ),
    );
  }
}






// Material and Cupertino are two design systems for building user interfaces in Flutter
// Material - for android/web device
// Cupertino - for ios/apple device



  // everything is a widger in flutter
  // state less widget - doesnt have any state; use it when we dont want changes in ui at runtime
  // state full widget - have widgets and needs to manage it; use it when changes in ui is needed at runtime