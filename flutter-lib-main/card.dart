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
      title: 'Flutter Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter card'),
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
    const arr = ['alex', 'jim', 'ram', 'rohit', 'zaid', 'xyz'];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return Card(
                // A Card in Flutter is a container widget that provides a rectangular, material-style surface with rounded corners and shadow, often used to group related information visually.
                elevation: 8,
                shadowColor: Colors.amber,
                margin: const EdgeInsets.only(top: 10),
                //color: Colors.amberAccent,
                child: ListTile(
                  leading: Text('$index'),
                  title: Text(arr[index]),
                  subtitle: Text(arr[index]),
                  trailing: const Icon(Icons.android),
                ),
              );
            },
            // separatorBuilder: (context, index) {   // use it when using listview seperated
            //   return const Divider(
            //     color: Colors.grey,
            //     thickness: 0,
            //   );
            // },
            itemCount: arr.length));
  }
}
