import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Foo Animation",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 90, 181, 255))),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        title: "flutter foo_animation",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  double _width = 200;
  double _height = 150;
  bool flag = true;
  Image img = Image.asset('assets/images/tree.jpg', fit: BoxFit.fill);
  Decoration decor = BoxDecoration(borderRadius: BorderRadius.circular(10));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: _width,
                  height: _height,
                  decoration: decor,
                  curve: Curves.fastEaseInToSlowEaseOut,
                  child: img),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (flag) {
                        _width = 150;
                        _height = 200;
                        img = Image.asset(
                          'assets/images/mountains.jpg',
                          fit: BoxFit.fill,
                        );
                        decor = BoxDecoration(
                            borderRadius: BorderRadius.circular(10));
                        flag = false;
                      } else {
                        _width = 200;
                        _height = 150;
                        img = Image.asset('assets/images/tree.jpg',
                            fit: BoxFit.fill);
                        decor = BoxDecoration(
                            borderRadius: BorderRadius.circular(20));
                        flag = true;
                      }
                    });
                  },
                  child: const Text('Animate')),
            ],
          ),
        ));
  }
}


/*  
Key Concepts in This Code:

1. AnimatedContainer:
   - A special container widget in Flutter that automatically animates its properties (e.g., size, decoration, or child) when they are updated.
   - It uses the `duration` parameter to determine the time it takes for the animation to complete.
   - The `curve` parameter specifies the type of animation curve, such as smooth or bouncing effects.

2. setState():
   - The `setState()` method is used to notify Flutter that the state of the widget has changed.
   - It triggers a rebuild of the widget tree, allowing changes (like size, decoration, and image updates) to be animated in the `AnimatedContainer`.

3. Dynamic Properties:
   - `_width`, `_height`, `img`, and `decor` are state variables that define the AnimatedContainer's size, child, and styling.
   - These properties are updated dynamically when the user presses the button.

4. Button Interaction:
   - The `ElevatedButton` triggers a state update using `setState()` and toggles between two visual states (e.g., a different size, image, and border radius).
   - The `flag` variable is used to alternate between the two states.

5. Smooth Animations:
   - The animation is smooth because of the `curve` parameter (`Curves.fastEaseInToSlowEaseOut`), which ensures gradual acceleration and deceleration.
   - The `duration` defines how long the transition lasts (in this case, 1 second).

This is a basic example of adding animations to enhance the user experience in Flutter applications!
*/
