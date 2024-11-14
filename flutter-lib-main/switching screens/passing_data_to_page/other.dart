import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  final String nameFromHome; // create a variable

  const Welcome(this.nameFromHome,
      {super.key}); // nameFromHome is required (it'll be passed in the constructor)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('data'), backgroundColor: Colors.amber),
      body: Center(
        child: SizedBox(
          height: 150,
          width: 150,
          child: Column(
            children: [
              Text("welcome, $nameFromHome"),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('back'))
            ],
          ),
        ),
      ),
    );
  }
}
