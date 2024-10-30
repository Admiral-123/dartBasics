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
      title: 'Flutter Container Decor',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter container decor'),
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
            color: Colors.blue.shade100,
            width: double.infinity,
            height: double.infinity,
            child: Center(
                child: Container(
              width: 200,
              height: 200,
              // if we dont give parent or child container its height and width then it'd take the height width of its child/parent container
              decoration: BoxDecoration(
                  color: Colors.purple.shade100,
                  //borderRadius: BorderRadius.circular(30), // rounds the container from edge
                  //borderRadius: const BorderRadius.only(bottomRight: Radius.elliptical(30, 10)) // only applied on one side
                  //borderRadius: const BorderRadius.only(topLeft: Radius.elliptical(20, 10),bottomRight: Radius.elliptical(10, 20))),
                  //borderRadius: const BorderRadius.all(Radius.circular(20))),
                  border: Border.all(width: 4, color: Colors.pink.shade100),
                  boxShadow: const [BoxShadow(blurRadius: 10, spreadRadius: 4)],
                  shape: BoxShape.circle // changes the shape of box,

                  ),
            ))));
  }
}
