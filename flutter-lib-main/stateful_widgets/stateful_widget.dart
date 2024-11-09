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
      title: 'Flutter Stateful & Stateless Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  var count = 0;
  // extend the state of the stateful widget and write the context (for ui purpose)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter stateful widget'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('count: $count'),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: const Text('NEXT'))
        ],
      )),
    );
  }
}



 /*
 state -> the moment we generate results we need to reflect those results in ui (by updating ui)




 `StatefulWidget`
In Flutter, there are two main types of widgets: Stateless and Stateful.
- `StatefulWidget` is used when the UI depends on some form of changing data or user interaction.
- The `StatefulWidget` itself is immutable, but it manages a separate `State` object where mutable
  state (data that can change) is stored.

`createState`
When you define a `StatefulWidget`, you need to implement the `createState` method, which returns an instance
of the associated `State` class. This `State` class (e.g., `MyHomeState`) holds the actual mutable state
and the `build` method, where you define the widget's UI.
The `createState` method is only called once, when the `StatefulWidget` is first created.

`setState`
The `setState` method is called whenever the widget's state needs to change, such as when a button is pressed
and the `count` variable increments. Calling `setState` triggers a rebuild of the widget, meaning the `build`
method will run again with the updated state, and the UI will reflect the new value(s).
- For example, pressing the 'NEXT' button increments `count` and updates the displayed count on the screen.

 */