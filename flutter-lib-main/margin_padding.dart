import 'package:flutter/material.dart';

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
      title: 'Flutter Margin and Padding',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter margin padding'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Container(
          color: Colors.orange.shade100,
          margin: const EdgeInsets.all(
              20.0), // margin is giving space outside container
          child: const Padding(
            // padding now is giving space inside container
            padding: EdgeInsets.all(12.0),
            child: Text('hlo wrld'),
          )),

      //  // margin:
      // body: Container(
      //     color: Colors.orange.shade100,
      //     margin: const EdgeInsets.all(10.0),
      //     child: const Text('hlo wrld')),

      //  // padding:
      // body: const Padding(
      //   // padding: EdgeInsets.all(8.0),
      //   padding: EdgeInsets.only(top: 10.0),

      //   child: Text('hlo wrld'),)
    );
  }
}
