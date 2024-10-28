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
      title: 'Flutter Scrollview',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter scrollview'),
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
    var arrNames = [
      'David',
      'Varun',
      'Steve',
      'Tom',
      'Ravi',
      'Lawrence',
      'Tim',
      'Shane',
      'Stephen',
      'Sangakara',
      'Glenn',
      'Pujara'
    ]; // create an arr; (can fetch data from server in real projecs)

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.builder(
          //
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            );
          },
          itemCount: arrNames.length,
          itemExtent:
              70, // itemExtent property in ListView.builder specifies a fixed extent (or height) for each item in the list

          scrollDirection: Axis.horizontal,
        ));
  }
}

/*

ListView.builder is a constructor for ListView, designed to build items dynamically and efficiently.
It’s especially useful when you have a list of items to display that could potentially be large,
as it only builds the visible items, which helps optimize performance

itemCount: Specifies the number of items in the list. Here, itemCount is set to arrNames.length, so it will only build as many widgets as there are names in arrNames.

itemBuilder: This is a callback function that defines how each item in the list is built. It takes two parameters:
context: Provides the current context.
index: Represents the index of the current item being built. 

*/
