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
      title: 'Flutter Mapping List To Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter mapping_list_to_widgets'),
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
        body: Mapper());
  }
}

class Mapper extends StatelessWidget {
  final arrData = [
    {'name': 'Alex', 'num': '7890848901', 'unread': '1'},
    {'name': 'Bella', 'num': '6789023456', 'unread': '3'},
    {'name': 'Chris', 'num': '5678901234', 'unread': '0'},
    {'name': 'Dana', 'num': '4567890123', 'unread': '2'},
    {'name': 'Eve', 'num': '3456789012', 'unread': '5'},
  ];

  Mapper({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hlo'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        child: ListView(
          children: arrData.map((val) {
            return Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: Text(val['name'].toString()),
                    subtitle: Text(val['num'].toString()),
                    trailing: Text(val['unread'].toString()),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}


/*
The .map() function creates an iterable by applying a function to each element in a list.
For example, if you have a list of contacts, you can use .map() to transform each contact into a widget.
*/