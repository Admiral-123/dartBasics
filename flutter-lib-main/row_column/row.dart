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
      title: 'Flutter Columns N Rows',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter columns and rows '),
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
        body: Row(
          children: <Widget>[
            // arr is of widget type
            const Text('hlo '),
            const Text('how '),
            const Text('are '),
            const Text('you '),
            const Text('alex '),
            ElevatedButton(
                onPressed: () {
                  print('btn inside column is clicked');
                },
                child: const Text('click'))
          ],
        ));
  }
}



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
      title: 'Flutter Columns N Rows',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter columns and rows '),
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
        body: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceEvenly, // gives equal space in main alignment of the widget
          // crossAxisAlignment: ,
          children: <Widget>[
            // arr is of widget type
            const Text('hlo'),
            const Text('how'),
            const Text('are'),
            const Text('you'),
            const Text('alex'),
            ElevatedButton(
                onPressed: () {
                  print('btn inside column is clicked');
                },
                child: const Text('click'))
          ],
        ));
  }
}


/*

Row - arranges widgets horizontally
Column - arranges widgets vertically

Column - 4 children
Row - 2 children (child: new Column, child: new Image)

*/


// MainAxisAlignment.spaceEvenly:
//   - Divides the available space evenly between each widget and on the edges.
//   - Each widget has equal space on its left and right, and the spaces 
//     between widgets and edges are all the same.

//   Visualization:
//   |  space  | widget |  space  | widget |  space  | widget |  space  |

// MainAxisAlignment.spaceAround:
//   - Places equal space around each widget but less space at the edges.
//   - The space between each widget is double the space between a widget 
//     and the edges.

//   Visualization:
//   | space | widget |   space   | widget |   space   | widget | space |

// MainAxisAlignment.spaceBetween:
//   - Places equal space only between widgets with no extra space on the edges.
//   - Widgets are spaced out between each other with no padding on the sides.

//   Visualization:
//   | widget |   space   | widget |   space   | widget |




/*

Row - arranges widgets horizontally
Column - arranges widgets vertically

Column - 4 children
Row - 2 children (child: new Column, child: new Image)

*/