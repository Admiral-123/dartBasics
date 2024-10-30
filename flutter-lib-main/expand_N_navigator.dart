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
      title: 'Flutter Expand',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter expand widget'),
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
        body: Row(
          children: [
            Expanded(
              // Expanded widget is used to make a child widget take up all available space along the main axis (horizontal in a Row, vertical in a Column)
              flex:
                  2, // The flex property in Expanded controls how much space an Expanded widget takes relative to others, with higher flex values occupying more space along the main axis.
              child: Container(
                width: 40,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 40,
                height: 100,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: 40,
                height: 100,
                color: Colors.green,
              ),
            ),
            Expanded(
              flex: 2,
              child: InkWell(
                onTap: () => {
                  // to navigate to other pages
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const NextPage()))
                },
                child: Container(
                  width: 40,
                  height: 100,
                  color: Colors.orange,
                ),
              ),
            )
          ],
        ));
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('page 2'),
        backgroundColor: Colors.amber,
      ),
      body: const Center(child: Text('welcome to page 2')),
    );
  }
}
