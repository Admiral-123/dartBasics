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
      title: 'Flutter List Tile in ListView',
      debugShowCheckedModeBanner: false, // Remove debug banner from the app
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter list-style in listview'),
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
    const arr = [
      'Rahul',
      'Johnson',
      'McGrath',
      'Shakib',
      'Saurav',
      'Shane',
      'Ashish',
      'Zaheer',
      'Singh'
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                //  widget that displays a single fixed-height row, typically containing a leading icon, title, subtitle, and trailing widget, making it ideal for lists.
                leading: Text('$index'), // right most element of list
                title: Text(arr[index]),
                subtitle: Text(arr[index]),
                trailing: const Icon(Icons.message),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(height: 50, thickness: 2);
            },
            itemCount: arr.length));
  }
}
