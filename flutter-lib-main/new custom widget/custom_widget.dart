import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/RoundedBtn_widget.dart';

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
      title: 'Flutter Custom Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter custom widgets'),
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
        // ignore: avoid_unnecessary_containers
        body: Center(
          child: Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedBtnWidget(
                btnName: 'hlo',
                bgColor: Colors.amber,
                icon: const Icon(Icons.lock),
                callback: () => {print('hlo')},
                textStyle: const TextStyle(color: Colors.red),
              ),
              RoundedBtnWidget(
                btnName: 'bye',
                bgColor: Colors.green,
                icon: const Icon(Icons.waves),
                callback: () => {print('bye')},
              )
            ],
          )),
        ));
  }
}


/*

create a different widgets folder in lib folder

and create new widget's dart file like in this case we created RoundedBtn_widget.dart

*/