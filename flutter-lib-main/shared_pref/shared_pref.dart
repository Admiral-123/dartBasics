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
      home: const MyHomePage(
        title: "flutter shared_pref",
      ),
    );
  }
}

// Home page widget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  TextEditingController _controller = TextEditingController();
  static const String KEYTXT = 'txt';
  var sved = 'no saved value till now';
  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.blue,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
              child: TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      label: const Text('write something'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.blueAccent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.amber),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.red)))),
            ),
            ElevatedButton(
              onPressed: () async {
                // var txt = _controller.text.toString();

                var prefs = await SharedPreferences.getInstance();
                prefs.setString(KEYTXT, _controller.text);

                setState(() {
                  sved = _controller.text;
                });
              },
              child: const Text('save'),
            ),
            Text(sved)
          ],
        )));
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();
    var getName = prefs.getString(KEYTXT);
    sved = getName ?? "No saved value till now"; // ?? means if null then
    setState(() {});
  }
}


/*



Explanation of the Code:

1. Importing `SharedPreferences`:
   - The `shared_preferences` package allows the app to persist simple data as key-value pairs.

2. TextEditingController:
   - `_controller` is used to capture and control the text input from the `TextField`.

3. Key Constant:
   - `KEYTXT` is a constant that acts as the key for storing and retrieving the value in `SharedPreferences`.

4. Saving Data to SharedPreferences:
   - When the "Save" button is clicked, the app retrieves the input text from `_controller.text`.
   - It initializes the `SharedPreferences` instance using `SharedPreferences.getInstance()`.
   - The `setString()` method saves the value associated with the key `KEYTXT`.

5. Retrieving Data from SharedPreferences:
   - The `getValue()` method is called during `initState` to load any saved value when the app starts.
   - `prefs.getString(KEYTXT)` retrieves the value saved under the `KEYTXT` key.
   - If no value exists, it defaults to "No saved value till now" using the `??` operator.
   - `setState()` is called to update the UI with the retrieved value.

6. UI Elements:
   - A `TextField` is provided for user input, with various states for its border styling.
   - An `ElevatedButton` triggers the save operation to store the input text in `SharedPreferences`.
   - A `Text` widget displays the current saved value dynamically.





*/
