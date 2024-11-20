import 'package:flutter/material.dart';
import 'package:flutter_basics/home.dart';
import 'package:flutter_basics/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mail = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.account_circle,
                  color: Colors.red,
                  size: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: mail,
                  decoration: InputDecoration(
                      label: const Text('Email'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  controller: pass,
                  decoration: InputDecoration(
                      label: const Text('Password'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: Colors.black))),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    // if successfully logged in

                    if (mail.text.toString() != '' &&
                        pass.text.toString() != '') {
                      var sharedPref = await SharedPreferences.getInstance();
                      sharedPref.setBool(SplashPageState.keyLogin, true);

                      // ignore: use_build_context_synchronously
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
                    }
                  },
                  child: const Text('Login'))
            ],
          ),
        ),
      ),
    );
  }
}
