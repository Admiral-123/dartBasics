import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Animated Crossfade",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 90, 181, 255))),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        title: "flutter animated_crossfade",
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
  bool isFirst = true;
  var crossFadeChild = CrossFadeState.showFirst;

  // @override
  // void initState() {
  //   super.initState();

  //   Timer(Duration(seconds: 4), () {
  //     reload();
  //   });
  // }

  // void reload() {
  //   setState(() {
  //     isFirst = false;
  //   });
  // }

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AnimatedCrossFade(
                  firstChild: Container(
                    width: 200,
                    height: 200,
                    color: Colors.black26,
                  ),
                  secondChild: Image.asset(
                    'assets/images/mountains.jpg',
                    width: 300,
                    height: 300,
                  ),
                  crossFadeState: crossFadeChild,
                  sizeCurve: Curves.linear,
                  firstCurve: Curves.fastOutSlowIn,
                  secondCurve: Curves.fastOutSlowIn,
                  duration: const Duration(seconds: 3)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (isFirst) {
                        crossFadeChild = CrossFadeState.showFirst;
                        isFirst = false;
                      } else {
                        crossFadeChild = CrossFadeState.showSecond;
                        isFirst = true;
                      }
                    });
                  },
                  child: const Text('Change')),
            )
          ],
        )));
  }
}


/*
Explanation of AnimatedCrossFade:

1. AnimatedCrossFade:
   - A Flutter widget that animates between two children (`firstChild` and `secondChild`) with a crossfade effect.
   - It is useful for smooth transitions between two visual states, such as switching between an image and a placeholder.

2. Key Parameters:
   - `firstChild`: The widget to display initially.
   - `secondChild`: The widget to transition to when the state changes.
   - `crossFadeState`: Specifies which child is currently visible. It accepts two values:
     - `CrossFadeState.showFirst`: Displays `firstChild`.
     - `CrossFadeState.showSecond`: Displays `secondChild`.
   - `duration`: Defines the time (in seconds or milliseconds) for the crossfade animation to complete.
   - `sizeCurve`: Defines how the size transition happens during the crossfade.
   - `firstCurve` and `secondCurve`: Specify animation curves for transitioning to the `firstChild` or `secondChild`, respectively.

3. Dynamic Transition:
   - In this code, the `crossFadeState` is toggled using a button. When the button is pressed, the state alternates between showing the `firstChild` and `secondChild`.

4. Animation Customization:
   - The crossfade effect is enhanced by using animation curves (`Curves.fastOutSlowIn` for smooth transitions and `Curves.linear` for consistent size scaling).
   - The `duration` of 3 seconds creates a gradual and visually pleasing transition.

5. Example Behavior:
   - Initially, a black container (`firstChild`) is displayed.
   - Pressing the "Change" button alternates between the black container and the image (`secondChild`), animating the transition.

6. Additional Use Case with Timer:
   - The commented-out `initState()` and `Timer` code snippet demonstrates how you can trigger the crossfade transition automatically after a delay (e.g., 4 seconds).

Key Points:
- `AnimatedCrossFade` is ideal for situations where you need smooth, visually appealing transitions between two widgets.
- Customizing curves and duration allows for greater control over the animation's behavior.
*/
