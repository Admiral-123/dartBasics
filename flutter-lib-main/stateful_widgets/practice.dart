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

class Mapper extends StatefulWidget {
  const Mapper({super.key});

  @override
  State<Mapper> createState() => MapperState();
}

class MapperState extends State<Mapper> {
  var h = "hi";
  var one = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 400,
      child: Column(
        children: [
          Expanded(
            child: TextField(
              controller: one,
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  suffixIcon: IconButton(
                      onPressed: () {
                        if (one.text == "") {
                          setState(() {
                            h = "hi";
                          });
                        } else {
                          setState(() {
                            h = one.text;
                          });
                        }
                      },
                      icon: const Icon(Icons.ac_unit_rounded))),
            ),
          ),
          Text(
            h,
            style: const TextStyle(fontSize: 40),
          ),
        ],
      ),
    ));
  }
}
