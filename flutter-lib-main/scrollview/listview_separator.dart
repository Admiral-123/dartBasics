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
        body: ListView.separated(
          //
          itemBuilder: (context, index) {
            return Text(
              arrNames[index],
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            );
          },
          itemCount: arrNames.length,
          //scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return const Divider(
              height: 50,
              thickness: 4,
            );
          },
        ));
  }
}

/*

separatorBuilder

Purpose: Defines a widget that separates each item in the list.

How It Works: Flutter will call separatorBuilder between each item in
the list to build a separator widget. Separators are not added at the start or
end of the list, only between items.


Divider:
The Divider widget is commonly used as a separator. It draws a horizontal or
vertical line (depending on the list’s orientation) with customizable properties
like height, thickness, color, and indent.

*/
