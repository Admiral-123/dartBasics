import 'package:flutter/material.dart';
import 'package:flutter_basics/main.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('intro'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          const Text(
            'data',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const Text(
            'wh',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const Text(
            'or',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const Text(
            'da',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                // in Navigator we push new page for that we need to give context's reference in parameter, then we have to pass route
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MyHomePage(title: 'welcome to homepage')));
              },
              child: const Text('change'))
        ],
      ),
    );
  }
}


/*

Navigator.push(...):

The Navigator.push function is used to add a new route (screen) on top of the current screen in the navigation stack. In Flutter,
the navigation stack is like a stack of pages. The push method puts a new page on top, meaning the user will navigate to this new page.

context:

The context parameter represents the current location in the widget tree. It is used by Navigator to know from which widget the navigation is
triggered. 

MaterialPageRoute(...):

MaterialPageRoute is a class that provides a "material design" transition between screens, which means it slides in from the bottom and fades in slightly.
MaterialPageRoute takes a builder function that returns the widget for the new screen (page) to display.

builder: (context) => const MyHomePage(...):

The builder function takes context as an argument and returns an instance of MyHomePage, which is the target screen the user is navigating to.
The const keyword here ensures that the widget is treated as a compile-time constant, meaning it won't rebuild unnecessarily, improving performance.

MyHomePage(title: 'welcome to homepage'):

MyHomePage is the widget class (page) being navigated to. Here, it's being instantiated with a property title set to 'welcome to homepage'.
MyHomePage should be a separate widget class, typically a StatefulWidget or StatelessWidget, that displays the content for the homepage.

*/