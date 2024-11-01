import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_custom/util.dart';

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
      title: 'Flutter Styles and Themes',
      debugShowCheckedModeBanner: false,
      // this theme below is the entire theme of the app
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        textTheme: const TextTheme(
          // some text themes
          headlineSmall: TextStyle(
              fontSize: 30, fontFamily: 'FontOne'), // we can customize themes
          headlineLarge: TextStyle(fontSize: 50, fontStyle: FontStyle.italic),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter styles-themes'),
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
          Text(
            'hlo wrld',
            style: Theme.of(context)
                .textTheme
                .headlineSmall, // to use those text themes in material app
          ),
          Text('hi wrld', style: Theme.of(context).textTheme.headlineLarge),
          Text(
            'bye wrld',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors
                    .indigoAccent), // use ? ! before using copywith(); it is used to extend the theme
          ),
          Text('juice wrld', style: Theme.of(context).textTheme.headlineLarge),
          Text(
            'wxy nz',
            style:
                myTxt(), // create another dir in lib and in that create a new custom theme for texts
          ),
          Text('data', style: myTxt2(textColor: Colors.green.shade300))
        ],
      ),
    );
  }
}



/*

in pubsec yaml

fonts:
    - family: FontOne
      fonts:
        - asset: assets/fonts/BebasNeue-Regular.ttf

*/