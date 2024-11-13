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
      title: 'Flutter Constraint Box',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter constraint_box'),
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
        body: const ConstraintBoxx());
  }
}

class ConstraintBoxx extends StatefulWidget {
  const ConstraintBoxx({super.key});

  @override
  State<ConstraintBoxx> createState() => ConstraintBoxState();
}

class ConstraintBoxState extends State<ConstraintBoxx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('constraintBox'),
        backgroundColor: Colors.amber,
      ),
      body: ConstrainedBox(
        // ConstrainedBox imposes min and max width/height on its child widget,
        // ensuring the child fits within specific size bounds.
        constraints: const BoxConstraints(
            maxHeight: 40, maxWidth: 150, minHeight: 30, minWidth: 75),
        child: const Text(
          "hlohlohlohlohlohlohlohlohlohlohlohlohlohlohlo",
          overflow: TextOverflow.fade,
        ),
      ),
    );
  }
}
