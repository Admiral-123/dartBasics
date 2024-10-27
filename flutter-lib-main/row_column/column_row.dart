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
      title: 'Flutter Columns N Rows',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter columns and rows '),
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
          child: Container(
            width: 500,
            height: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('y', style: TextStyle(fontSize: 25)),
                    Text('z', style: TextStyle(fontSize: 25)),
                    Text('y', style: TextStyle(fontSize: 25)),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('a', style: TextStyle(fontSize: 25)),
                    Text('b', style: TextStyle(fontSize: 25)),
                    Text('c', style: TextStyle(fontSize: 25)),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      print('clicked');
                    },
                    onLongPress: () {
                      print('clicked for long enough');
                    },
                    child: const Text('click'))
              ],
            ),
          ),
        ));
  }
}

/*

Row - arranges widgets horizontally
Column - arranges widgets vertically

Column - 4 children
Row - 2 children (child: new Column, child: new Image)

*/