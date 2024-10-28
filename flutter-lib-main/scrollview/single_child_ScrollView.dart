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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                color: Colors.green.shade300,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 5, bottom: 5),
                      height: 200,
                      width: 200,
                      color: const Color.fromARGB(255, 118, 246, 255),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 5, bottom: 5),
                      height: 200,
                      width: 200,
                      color: const Color.fromARGB(255, 97, 92, 44),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 5, bottom: 5),
                      height: 200,
                      width: 200,
                      color: const Color.fromARGB(255, 255, 195, 135),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                color: Colors.yellow.shade300,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                color: Colors.blue.shade300,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                color: Colors.pink.shade300,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                color: Colors.grey.shade300,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                color: Colors.purple.shade300,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                color: Colors.orange.shade300,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                color: Colors.redAccent,
              ),
            ],
          ),
        ));
  }
}
