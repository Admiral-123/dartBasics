import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  // Entry point of the Flutter application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // The root widget of the application, MyApp sets up the basic MaterialApp and theme
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Date and Time',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter date-time'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // Stateful widget to manage state (like the counter) within the page
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('current date: ${DateFormat("d MMM, y").format(date)}'),
                /* DateFormat() formats DateTime objects into readable date/time
                   strings based on specified patterns (e.g., 'yyyy-MM-dd HH:mm:ss').
                   It allows for easy customization and locale-sensitive formatting
                   of dates and times. 
                */
                ElevatedButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: const Text('refresh'))
              ],
            )),
      ),
    );
  }
}

/*
in yaml:

dependencies:
  flutter:
    sdk: flutter
  intl: ^0.18.0 # Add this line (or the latest version)


in main.dart:

import 'package:intl/intl.dart';

 */
