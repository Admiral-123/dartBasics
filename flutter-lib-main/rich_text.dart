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
      title: 'Flutter Rich Text',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter rich text'),
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
        body:
            // const Row(
            //   children: [
            //     Text(
            //       'Hello ',
            //       style: TextStyle(
            //           fontSize: 24,
            //           color: Colors.grey,
            //           fontWeight: FontWeight.w800),
            //     ),
            //     Text(
            //       'Wrld',
            //       style: TextStyle(
            //           fontSize: 34,
            //           color: Colors.amber,
            //           fontWeight: FontWeight.w800),
            //     )
            //   ],
            // )
            // can do all this above using rich text

            RichText(
                // this one below will have the def. style of RichText
                text: const TextSpan(
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                    children: <TextSpan>[
              TextSpan(text: 'Hello '),
              TextSpan(
                  text: 'Wrld ',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                      color: Colors.amberAccent)),
              TextSpan(text: 'random '),
              TextSpan(
                  text: 'static',
                  style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Colors.blueAccent)),
              TextSpan(text: ' dart'),
              TextSpan(
                  text: " java",
                  style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic,
                      color: Colors.deepOrangeAccent))
            ])));
  }
}
