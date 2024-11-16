import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Random Project",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 90, 181, 255))),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(
        title: "Random Project",
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
  var nameArr = [
    'Emma',
    'Liam',
    'Olivia',
    'Noah',
    'Ava',
    'Mason',
    'Sophia',
    'William',
    'Ming',
    'Yuki',
    'Jin',
    'Ravi',
    'Priya',
    'Kai',
    'Soo-jin',
    'Hiroshi',
    'Sofia',
    'Lucas',
    'Isabella',
    'Henrik',
    'Amélie',
    'Marcel',
    'Chiara',
    'Anders',
    'Amir',
    'Fatima',
    'Hassan',
    'Leila',
    'Omar',
    'Zara',
    'Karim',
    'Yasmin',
    'Amara',
    'Kofi',
    'Zuri',
    'Kwame',
    'Nia',
    'Jabari',
    'Amina',
    'Kenzo',
    'Sofia',
    'Miguel',
    'Luna',
    'Diego',
    'Valentina',
    'Gabriel',
    'Carmen',
    'Rafael'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [Colors.orange.shade300, Colors.green.shade300])),
        child: Center(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white)),
                    child: ListTile(
                      title: Text(nameArr[index]),
                      leading: const Icon(Icons.person),
                      trailing: const Icon(Icons.message),
                    ),
                  );
                },
                itemCount: nameArr.length,
                separatorBuilder: (context, index) => const Divider(
                  thickness: 2,
                  color: Colors.grey,
                ),
              )),
        ),
      ),
    );
  }
}
