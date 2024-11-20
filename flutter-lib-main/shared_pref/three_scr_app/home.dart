import 'package:flutter/material.dart';
import 'package:flutter_basics/login.dart';
import 'package:flutter_basics/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.holiday_village,
                color: Colors.pink,
                size: 300,
              ),
              ElevatedButton(
                  onPressed: () async {
                    setState(() async {
                      var sharedPref = await SharedPreferences.getInstance();
                      sharedPref.setBool(SplashPageState.keyLogin, false);

                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    });
                  },
                  child: const Text('Logout'))
            ],
          ),
        ),
      ),
    );
  }
}
