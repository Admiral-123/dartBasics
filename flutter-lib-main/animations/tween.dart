import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Main app widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter List Wheel",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 90, 181, 255))),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        title: "flutter list_wheel",
      ),
    );
  }
}

// Home page widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  // Declaring animation and animation controller variables
  late Animation animation; // Animation controlling size changes
  late AnimationController
      animationController; // Controls the animation progress
  late Animation colorAnimation; // Animation controlling color changes

  // late means it'll be initialized late

  @override
  void initState() {
    super.initState();

    // Initializing AnimationController
    // `vsync` optimizes the animation to use system resources effectively
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    // Tween defines a range of values that the animation will interpolate
    // Here, we animate the size from 0.0 to 200.0
    animation = Tween(begin: 0.0, end: 200.0).animate(animationController);
    // The animate() function in Flutter is a method provided by a Tween object. It connects a Tween to an AnimationController and creates an Animation object.

    // Using a ColorTween to animate colors between black and orange
    colorAnimation = ColorTween(begin: Colors.black, end: Colors.orange)
        .animate(animationController);

    // Listener that rebuilds the UI whenever the animation updates
    animationController.addListener(() {
      setState(() {}); // Rebuilds the widget tree to reflect animation changes
    });

    // Starts the animation forward (from the beginning)
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            // Size of the container is dynamically controlled by the animation value
            width: animation.value,
            height:
                animation.value - 10, // Slight difference in height for effect
            color: colorAnimation
                .value, // Color of the container changes dynamically
          ),
        ));
  }
}
