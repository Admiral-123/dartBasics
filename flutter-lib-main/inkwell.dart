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
      title: 'Flutter InkWell',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter inkwell'),
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
        body: Center(
          child: InkWell(
            onTap: () {
              print('tapped');
            },
            onTapDown: (details) => {print('going down')},
            onTapUp: (details) => {print('tapped up')},
            onDoubleTap: () => {print('doubled tap')},
            onLongPress: () => {print('pressed for long')},
            child: Container(
              width: 300,
              height: 300,
              color: Colors.lightBlue,
              child: Center(
                child: InkWell(
                  onTap: () {
                    print('clicked on text');
                  },
                  child: const Text(
                    'INDIA',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 136, 0), fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}


/*

InkWell is a widget that provides a tap effect with a splash animation.
Commonly wraps other widgets to make them interactive.
Key callbacks include onTap, onDoubleTap, and onLongPress.
Requires a Material ancestor for the splash effect to display correctly.

*/