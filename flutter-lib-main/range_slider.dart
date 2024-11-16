import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Root widget of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Range Slider",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.cyan,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(97, 86, 77, 77)),
          useMaterial3: true),
      home: const MyHomePage(title: 'Flutter Range Slider'),
    );
  }
}

// StatefulWidget is used because we need to maintain state (slider values)
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Initialize RangeValues with start value of 0 and end value of 100
  RangeValues values = const RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    // Create labels that will display the current values when sliding
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: RangeSlider(
              // Current values of the slider (contains both start and end points)
              values: values,

              // Divide the slider into 10 segments (creating 11 possible stopping points)
              divisions: 10,

              // Minimum value of the slider
              min: 0,

              // Maximum value of the slider
              max: 100,

              // Color of the selected range and thumbs
              activeColor: Colors.green.shade600,

              // Color of the inactive portion of the slider
              inactiveColor: Colors.green.shade100,

              // Labels shown above the slider thumbs while dragging
              labels: labels,

              // Callback function called when the slider value changes
              onChanged: (newValue) {
                // newValue is a RangeValue, it is created when we slide the range (onChanged)
                setState(() {
                  values = newValue; // Update the values
                });
              }),
        ));
  }
}

/*
Key Concepts of RangeSlider:

1. RangeValues:
   - A class that holds two values: start and end
   - Used to represent the current selection range in the slider
   
2. Divisions:
   - Splits the slider into equal segments
   - If max is 100, min is 0, and divisions is 10, each step will be 10 units
   
3. Labels:
   - Shows the current values above the thumbs while dragging
   - Created using RangeLabels class
   
4. Colors:
   - activeColor: Colors the selected range and the thumbs
   - inactiveColor: Colors the unselected portions of the slider
   
5. setState:
   - Required to update the UI when values change
   - Triggers a rebuild of the widget with new values

Common Use Cases:
- Price range selection in shopping apps
- Age range filters
- Date range selection
- Any min-max range selection scenario
*/