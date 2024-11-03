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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            child: GridView.count(
              crossAxisCount:
                  4, //amount of widgets that can be in the cross Axis of Gridview

              crossAxisSpacing: 9, // space b/w cross axis grids (in columns)
              mainAxisSpacing: 9, // space b/w main axis grids (row)
              children: [
                Container(
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
          ),
          Container(
            height: 200,
            child: GridView.extent(
              maxCrossAxisExtent: 50,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                Container(
                  color: Colors.amber,
                ),
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.black,
                ),
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


/*

GridView.count
Purpose: Specifies the number of columns in the grid.
Usage: Use crossAxisCount to define the number of items (tiles) per row in the grid.
Layout: Each item will adapt its width according to the screen width divided by crossAxisCount.
Best for: Cases where you know exactly how many columns you want, regardless of the screen size.


GridView.extent
Purpose: Specifies a maximum width for each tile.
Usage: Use maxCrossAxisExtent to define the maximum width for each item.
Layout: Flutter automatically calculates the number of columns based on the available screen width and the maximum width of each item.
Best for: Cases where you want the grid to be responsive and adjust the number of columns based on screen size.

*/