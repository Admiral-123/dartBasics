import 'package:flutter/material.dart';
import 'package:flutter_basics/detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Hero Animation",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 90, 181, 255))),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        title: "flutter hero_animation",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Detail(),
                ));
          },
          child: Hero(
              tag: 'background',
              child: Image.asset(
                'assets/images/mountains.jpg',
                width: 150,
                height: 50,
              )),
        ),
      ),
    );
  }
}

// Comments explaining the Hero widget:

/*
1. **What is a Hero Widget?**
   - The `Hero` widget is used to implement a smooth transition animation between two screens.
   - It connects widgets on different pages with the same `tag`, creating a visually seamless animation.

2. **How Hero Works:**
   - The widget with a `Hero` tag on the source page (e.g., `MyHomePage`) and the widget with the same `Hero` tag on the destination page (e.g., `Detail`) are linked.
   - During navigation, Flutter animates the transition between these two widgets.

3. **Key Properties of Hero:**
   - `tag`: A unique identifier that links the source and destination widgets. It must be the same for both.
   - `child`: The widget that will be animated during the transition.

4. **Why Use Hero?**
   - It makes transitions more engaging and visually appealing.
   - Ideal for shared elements like images, icons, or text between two pages.

5. **How It’s Used in the Code:**
   - In `MyHomePage`, a `Hero` widget wraps the `Image.asset` widget with the tag `'background'`.
   - When the user taps the image, it navigates to the `Detail` page where another `Hero` widget with the same tag is defined (not shown in this snippet but should exist in `Detail`).
   - The `Hero` animation creates a smooth transition for the image between the two pages.

6. **Additional Notes:**
   - Ensure that the tags are unique to avoid conflicts with other `Hero` widgets.
   - The transition respects the `child`'s size and appearance in both the source and destination widgets.
*/
