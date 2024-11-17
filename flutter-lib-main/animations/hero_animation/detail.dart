import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('other'),
          backgroundColor: Colors.amber,
        ),
        body: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'background',
            child: Image.asset(
              'assets/images/tree.jpg',
              width: 400,
              height: 200,
            ),
          ),
        ));
  }
}
