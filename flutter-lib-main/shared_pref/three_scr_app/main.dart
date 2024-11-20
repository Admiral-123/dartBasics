import 'dart:async';
import 'package:flutter_basics/home.dart';
import 'package:flutter_basics/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
      title: "Flutter Shared Pref",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 90, 181, 255))),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(
        title: "welcome",
      ),
    );
  }
}

// Home page widget
class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required this.title});

  final String title;

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  static const String keyLogin = "Login";
  @override
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Icon(
        Icons.account_circle,
        color: Colors.redAccent,
        size: 150,
      ),
    ));
  }

  void whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();
    var isLoggedIn = sharedPref.getBool(keyLogin);

    Timer(const Duration(seconds: 2), () {
      if (isLoggedIn != null) {
        if (isLoggedIn) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => const Home()));
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const LoginPage()));
        }
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
      }
    });
  }
}
