import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Cliprrect",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 90, 181, 255))),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        title: "flutter cliprrect",
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: Center(
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                'assets/images/mountains.jpg',
                width: 300,
                height: 200,
                fit: BoxFit.fill,
              )),
        ));
  }
}


/*
ClipRRect Explanation:

1. What is ClipRRect?
   - ClipRRect is a widget that clips (cuts) its child using rounded rectangles
   - "RRect" stands for "Rounded Rectangle"
   - It's commonly used to create rounded corners on images, containers, or other widgets

2. Key Properties:
   - borderRadius: Defines how rounded the corners should be
   - child: The widget that will be clipped (in this case, an Image)

3. BorderRadius Options:
   - BorderRadius.all(): Applies same radius to all corners
   - BorderRadius.only(): Allows different radius for each corner
   Examples:
   borderRadius: BorderRadius.only(
     topLeft: Radius.circular(20),
     bottomRight: Radius.circular(20),
   )

4. Image Properties Used:
   - width: 300 - Sets the image width
   - height: 200 - Sets the image height
   - fit: BoxFit.fill - Stretches image to fill the space

5. Common BoxFit Options:
   - BoxFit.fill: Stretches image to fill space
   - BoxFit.cover: Maintains aspect ratio, may crop
   - BoxFit.contain: Fits entire image, may leave space
   - BoxFit.fitWidth: Fits width, maintains ratio
   - BoxFit.fitHeight: Fits height, maintains ratio

6. Usage Examples:
   - Rounded profile pictures
   - Rounded image cards
   - Rounded banner images
   - Rounded thumbnails

7. Important Notes:
   - ClipRRect affects performance slightly
   - Use only when needed
   - For containers with solid colors, consider using Container with
     decoration: BoxDecoration(borderRadius: BorderRadius.circular(20))
     instead as it's more efficient

Example Modifications:
// More rounded corners
borderRadius: BorderRadius.all(Radius.circular(50))

// Only top corners rounded
borderRadius: BorderRadius.only(
  topLeft: Radius.circular(20),
  topRight: Radius.circular(20)
)

// Oval shape
borderRadius: BorderRadius.all(Radius.circular(100))
*/