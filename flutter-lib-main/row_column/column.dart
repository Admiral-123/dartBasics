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
      title: 'Flutter Columns N Rows',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter columns and rows '),
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
          height: 250,
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment
                .stretch, //stretches the stretchable widgets in crossAxis of the widget (button in this case)
            children: <Widget>[
              // arr is of widget type
              const Text('hlo'),
              const Text('how'),
              const Text('are'),
              const Text('you'),
              const Text('alex'),
              ElevatedButton(
                  onPressed: () {
                    print('btn inside column is clicked');
                  },
                  child: const Text('click'))
            ],
          ),
        ));
  }
}

/*

Row - arranges widgets horizontally
Column - arranges widgets vertically

Column - 4 children
Row - 2 children (child: new Column, child: new Image)

*/