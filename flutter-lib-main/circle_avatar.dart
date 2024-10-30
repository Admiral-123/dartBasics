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
      title: 'Flutter CircleAvatar',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter circle-avatar'),
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
    // const arr = [
    //   'Rahul',
    //   'Johnson',
    //   'McGrath',
    //   'Shakib',
    //   'Saurav',
    //   'Shane',
    //   'Ashish',
    //   'Zaheer',
    //   'Singh'
    // ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/mountains.jpg'),
          radius: 100,
          // maxRadius: 50, // if image is too big then this would be the size limit
          // minRadius: 10, // if image is too small then this would be the size limit
          child: Text(
            'hlo',
            style: TextStyle(color: Colors.amber),
          ),
        ),
      ),
    );
  }
}
