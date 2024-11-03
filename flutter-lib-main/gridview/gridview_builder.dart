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
      title: 'Flutter Gridview',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter gridview'),
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
  var arrColor = [
    Colors.redAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.black45
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Container(
              color: arrColor[index],
            );
          },
          itemCount: arrColor.length,
        ));
  }
}


/*

GridView.builder: A constructor of GridView used to create grid layouts where items are generated lazily (on-demand) rather than being created all at once. This is efficient for large data sets, as it only builds items that are visible on the screen.

gridDelegate: Determines the layout structure of the grid. In this case:

SliverGridDelegateWithFixedCrossAxisCount: Sets a fixed number of columns in the grid.
crossAxisCount: 2: Specifies that the grid should have 2 columns, meaning each row will contain 2 items.

itemBuilder: A function that builds each item in the grid. It takes context (information about the widget location) and index (the current item index) as parameters:

color: arrColor[index]: Sets the background color of each grid item based on the arrColor list. Each item in the grid will have a color from this list, cycling through the colors based on the item index.
itemCount: Specifies the total number of items in the grid. Setting itemCount to arrColor.length means the grid will have as many items as there are colors in arrColor (4 items in this example).

*/