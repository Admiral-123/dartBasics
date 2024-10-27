// Importing Flutter's Material package for building Material Design apps
import 'package:flutter/material.dart';

// The main function is the entry point of the Flutter application
void main() {
  // Runs the MyApp widget as the root of the application
  runApp(const MyApp());
}

// MyApp widget: the root widget of the application, which sets up a MaterialApp and theme
class MyApp extends StatelessWidget {
  // Constructor for MyApp; marked as constant for optimization
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Defines a MaterialApp widget with title, theme, and home page
    return MaterialApp(
      title: 'Flutter Images', // Application title
      debugShowCheckedModeBanner: false, // Hides the debug banner in the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor:
                Colors.deepPurple), // Sets theme color using a seed color
        useMaterial3: true, // Enables Material 3 design
      ),
      home: const MyHomePage(title: 'Flutter Image'), // Home page of the app
    );
  }
}

// MyHomePage widget: a stateful widget to manage state within the page
class MyHomePage extends StatefulWidget {
  // Constructor for MyHomePage; accepts a title parameter
  const MyHomePage({super.key, required this.title});

  // Title property that holds the title text of the home page
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// _MyHomePageState: manages the state for MyHomePage widget
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Returns a Scaffold, which provides the basic structure for the page
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context)
              .colorScheme
              .inversePrimary, // Sets the AppBar color to match theme
          title: Text(widget.title), // Displays the title in the AppBar
        ),
        body: Center(
            // Center widget aligns its child (Container with Image) to the center
            child: Container(
                width: 200, // Sets the width of the Container
                height: 150, // Sets the height of the Container
                child: Image.asset(
                    'assets/images/tree.jpg') // Loads an image from assets
                )));
  }
}


/*

create assets dir and inside that create images dir

in pubsec.yaml:

flutter:
  assets:
    - assets/images/

*/