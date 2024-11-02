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
      title: 'Flutter Text Input',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(97, 86, 77, 77)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter text-input'),
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
    var passcode = TextEditingController();
    var usernames = TextEditingController();
    var phoneNum = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  autocorrect: false,
                  //enabled: false,
                  controller: usernames,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          // when border is clicked
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Colors.amber, width: 3)),
                      enabledBorder: OutlineInputBorder(
                          // border when not in focus (clicked)
                          borderRadius: BorderRadius.circular(20),
                          borderSide:
                              const BorderSide(color: Colors.redAccent)),
                      disabledBorder: OutlineInputBorder(
                          // border when not in focus (clicked)
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.yellow)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.green)),
                      suffixText:
                          'Username', // it'll be only showed when textfield is in focus
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.ac_unit_rounded,
                          color: Colors.blueAccent,
                        ),
                        onPressed: () {
                          print('icon clicked');
                        },
                      )),
                ),
                TextField(
                  controller: passcode,
                  obscureText: true, // to hide the texts
                  obscuringCharacter: '*',
                  autocorrect: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(color: Colors.green)),
                      suffix: Container(
                        height: 10,
                        width: 20,
                        color: Colors.amberAccent,
                      ),
                      prefixIcon: IconButton(
                          onPressed: () {
                            print('clicked on eye');
                          },
                          icon: const Icon(Icons.remove_red_eye)),
                      // prefixText:
                      //     'password: ', // it'll be only showed when textfield is in focus
                      // prefixStyle: const TextStyle(fontWeight: FontWeight.bold),
                      hintText:
                          'password: symbols and caps', // hints for the text fields
                      hintStyle: const TextStyle(fontWeight: FontWeight.w400)),
                ),
                TextField(
                  keyboardType: TextInputType
                      .phone, // keyboard which would pop up when clicked on textfield
                  controller: phoneNum,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green.shade200)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.green.shade200)),
                      prefixText: 'phone: ',
                      suffixIcon: const Icon(
                        Icons.phone,
                      )),
                ),
                ElevatedButton(
                    onPressed: () {
                      String userName = usernames.text.toString();
                      String passwords = passcode.text.toString();
                      String phone = phoneNum.text.toString();

                      print(
                          "username: $userName, password: $passwords , phone:$phone");
                    },
                    child: const Text('login'))
              ],
            ),
          ),
        ));
  }
}



/* 


Explanation of the Key Components in the Code:

1. TextField:
   - The `TextField` widget allows users to enter text input.
   - It’s used here for fields like usernames, passwords, and phone numbers.
   - Each `TextField` can be styled and controlled with properties and controllers.

2. TextEditingController:
   - A `TextEditingController` is assigned to each `TextField` to manage the text inside it.
   - It allows us to read, set, or clear the text in a `TextField`.
   - In this code, `usernames`, `passcode`, and `phoneNum` are `TextEditingController` instances for different `TextField`s.

3. InputDecoration:
   - `InputDecoration` is a property used to style and customize the appearance of a `TextField`.
   - It controls elements like borders, icons, and hint text.

4. Key Properties of InputDecoration:
   - `focusedBorder`: Defines the border style when the `TextField` is focused (clicked or tapped).
   - `enabledBorder`: Defines the border style when the `TextField` is not focused but enabled (editable).
   - `disabledBorder`: Sets the border style when the `TextField` is disabled.
   - `border`: General border property to give the `TextField` a specific outline when none of the above states are active.
   - `suffixText`: Text displayed on the right side of the `TextField` when it’s in focus.
   - `suffixIcon`: Adds an icon on the right side of the `TextField`.
   - `prefixText`: Text displayed on the left side of the `TextField` when it’s in focus.
   - `prefixIcon`: Adds an icon on the left side of the `TextField`.
   - `hintText`: Placeholder text giving a hint about what to enter in the `TextField`.

5. Additional Properties Used in TextField:
   - `keyboardType`: Sets the type of keyboard that appears when the user taps on the `TextField`. 
      - For example, `TextInputType.phone` displays a number keypad for phone input.
   - `obscureText`: When set to `true`, it hides the input text, useful for passwords.
   - `obscuringCharacter`: Defines the character shown instead of the actual text when `obscureText` is true.
   - `autocorrect`: Disables auto-correction if set to `false`, which is useful for fields like passwords and codes.


*/