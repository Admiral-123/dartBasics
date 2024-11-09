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
      title: 'Flutter Stateful & Stateless Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter stateful_stateless_widgets'),
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
        body: const Adder());
  }
}

class Adder extends StatefulWidget {
  const Adder({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyAdder();
  }
}

class MyAdder extends State<Adder> {
  var secondNumController = TextEditingController();
  var firstNumController = TextEditingController();
  var result = "Result";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('calculator'),
      ),
      body: Container(
        color: Colors.blue.shade400,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: firstNumController,
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                ),
                TextField(
                  keyboardType: TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4))),
                  controller: secondNumController,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text(result)],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            var no1 =
                                int.parse(firstNumController.text.toString());
                            var no2 =
                                int.parse(secondNumController.text.toString());

                            var sum = no1 + no2;

                            result = "The result is $sum";

                            setState(() {});
                          },
                          child: Text('Add')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 =
                                int.parse(firstNumController.text.toString());
                            var no2 =
                                int.parse(secondNumController.text.toString());

                            var sub = no1 - no2;

                            result = "The result is $sub";

                            setState(() {});
                          },
                          child: Text('Sub')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 =
                                int.parse(firstNumController.text.toString());
                            var no2 =
                                int.parse(secondNumController.text.toString());

                            var div = no1 / no2;

                            result = "The result is $div";

                            setState(() {});
                          },
                          child: Text('Div')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 =
                                int.parse(firstNumController.text.toString());

                            var no2 =
                                int.parse(secondNumController.text.toString());

                            var mul = no2 * no1;

                            result = "The result is $mul";
                            setState(() {});
                          },
                          child: Text('Mul')),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
