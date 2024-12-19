import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "stream builder",
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => MainPage();
}

class MainPage extends State<Main> {
  TextEditingController nameController = TextEditingController();
  StreamController<String> streamcontroller = StreamController<
      String>(); // streamController which has stream of Strings

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("streambuilder"),
      ),
      body: Center(
        child: Column(
          children: [
            StreamBuilder<String>(
                // streambuilder creates a widget on the basis of strings it gets
                stream: streamcontroller.stream, // the stream
                builder: (context, snapshot) {
                  // snapshot is kinda like image of that stream
                  if (snapshot.hasData) {
                    return SizedBox(
                        height: 30,
                        width: 60,
                        child: Text(snapshot.data ??
                            'null data')); // taking out data of that stream
                  } else {
                    return const SizedBox(
                        height: 30, width: 60, child: Text('null data'));
                  }
                }),
            TextField(
              controller: nameController,
            ),
            TextButton(
                onPressed: () {
                  streamcontroller
                      .add(nameController.text); // add a text in that stream
                },
                child: const Text('click'))
          ],
        ),
      ),
    );
  }
}
