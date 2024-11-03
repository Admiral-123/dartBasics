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
      title: 'Flutter Splitting Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter splitting widgets'),
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
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: const Column(
            children: [Stroies(), Calls(), Boxy(), Account(), Gridder()],
          ),
        ));
  }
}

// we created the stories in another class
class Stroies extends StatelessWidget {
  const Stroies({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        color: Colors.blueAccent,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.all(11.0),
                  child: SizedBox(
                    width: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                    ),
                  ),
                )),
      ),
    );
  }
}

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        color: Colors.green,
        child: ListView.builder(
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Colors.blueGrey),
              title: Text('name'),
              subtitle: Text('mob no.'),
              trailing: Icon(Icons.call),
            ),
          ),
          itemCount: 10,
        ),
      ),
    );
  }
}

class Boxy extends StatelessWidget {
  const Boxy({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      flex: 2,
      child: Container(
          height: 100,
          color: Colors.redAccent,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 30,
                height: 30,
                color: Colors.amber,
              ),
            ),
            itemCount: 10,
          )),
    );
  }
}

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        height: 100,
        color: Colors.indigo,
        child: ListView.builder(
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.red,
              ),
              title: Text('Name'),
              subtitle: Text('account'),
              trailing: Icon(Icons.monetization_on),
            ),
          ),
          itemCount: 20,
        ),
      ),
    );
  }
}

class Gridder extends StatelessWidget {
  const Gridder({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          children: [
            Container(
              color: Colors.black54,
            ),
            Container(
              color: Colors.white,
            ),
            Container(
              color: Colors.cyan,
            ),
            Container(
              color: const Color.fromARGB(255, 42, 194, 47),
            ),
          ],
        ),
      ),
    );
  }
}


// in this code we made different ui widgets in different class and then add it to the homepage