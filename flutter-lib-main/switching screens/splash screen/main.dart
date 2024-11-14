import 'package:flutter/material.dart';
import 'package:flutter_basics/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Switching Screen",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(97, 86, 77, 77)),
          useMaterial3: true),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
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
        title: const Text('change page'),
      ),
      body: const Column(
        children: [
          const Text('hlo'),
        ],
      ),
    );
  }
}


// create the other page in lib