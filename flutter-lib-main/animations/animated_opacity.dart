import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Animated Opacity",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 90, 181, 255))),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        title: "flutter animated_opacity",
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
  double _height = 100;
  var _opacity = 1.0;
  bool isVisible = true;

  Decoration decor = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.yellow,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 2),
              curve: Curves.bounceIn,
              child: Container(
                width: _width,
                height: _height,
                decoration: decor,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (isVisible) {
                      _width = 100;
                      _height = 200;
                      _opacity = 1.0;
                      decor = BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.yellow,
                      );
                      isVisible = false;
                    } else {
                      _width = 200;
                      _height = 100;
                      _opacity = 0.25;
                      decor = BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow,
                      );
                      isVisible = true;
                    }
                  });
                },
                child: const Text('Animate'))
          ],
        )));
  }
}


/*
Explanation of Animated Opacity Code:

1. AnimatedOpacity:
   - A Flutter widget that animates changes in its `opacity` property.
   - The `opacity` value ranges from `0.0` (completely transparent) to `1.0` (fully opaque).
   - The `duration` parameter defines how long the transition between opacity values takes.
   - The `curve` parameter specifies the animation curve, such as bounce, linear, or ease-in.

2. Opacity Animation:
   - The `_opacity` state variable is dynamically updated using `setState()`. 
   - Changing `_opacity` triggers the animation defined in `AnimatedOpacity`.
   - In this code, when the button is pressed, the `_opacity` alternates between `1.0` (visible) and `0.25` (partially transparent).

3. State Management:
   - The `isVisible` flag tracks the visibility state and determines the behavior of the animation and the container's size.
   - The `setState()` method is used to notify Flutter that the widget's state has changed, causing a rebuild and triggering the animation.

4. AnimatedContainer Integration:
   - Although the main focus is on `AnimatedOpacity`, the `Container` also animates its size and shape using properties like `_width`, `_height`, and `decor`.
   - This combination showcases how multiple animations (opacity and size) can work together for a richer user experience.

5. Button Interaction:
   - The `ElevatedButton` toggles the state of the container when pressed.
   - It updates `_width`, `_height`, `_opacity`, and `decor` to create an animated transition for both opacity and size.

6. Animation Curve:
   - The `curve: Curves.bounceIn` gives the opacity animation a bouncing effect as it becomes visible, adding a playful touch to the transition.

Key Points:
- `AnimatedOpacity` is ideal for smooth fade-in and fade-out effects.
- It is highly efficient and optimized for rendering transparency animations.
- Combining multiple animated widgets (e.g., `AnimatedOpacity` and `AnimatedContainer`) can create complex animations without compromising performance.
*/
