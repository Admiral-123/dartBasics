import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Provider',
      theme: ThemeData(primaryColor: Colors.blue),
      home: ChangeNotifierProvider(
        create: (context) => CounterProvider(),
        child: const Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('counter'), backgroundColor: Colors.amber),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueGrey,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'counter value is:',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Consumer<CounterProvider>(builder: (ctx, _, __) {
                //_ and __ are commonly used as variable names to indicate that those variables are intentionally unused
                return Text(
                  '${Provider.of<CounterProvider>(ctx, listen: true).getCount()}',

                  // '${ctx.watch<CounterProvider>().getCount()}', // can also do it like this
                  style: const TextStyle(fontSize: 20.0),
                );
              })
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              // if listen isnt important then always keep it false as if we dont declare it false it'd stay true

              Provider.of<CounterProvider>(context, listen: false)
                  .incrementCount();

              // context.read<CounterProvider>().incrementCount();  // can also do it like this
            },
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterProvider>().decrementCount();
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}


// 1. ChangeNotifierProvider:
//    - This is a provider that uses the ChangeNotifier class to manage state.
//    - The `create` parameter initializes the state management class (in this case, `CounterProvider`).
//    - It is used to make the state (CounterProvider) accessible to all widgets within its child tree.
//    - Wrapping the `Home` widget with `ChangeNotifierProvider` ensures the state is available to all widgets under it.
//    - `ChangeNotifier` in the `CounterProvider` class listens for changes and notifies widgets that consume this provider.

// 2. CounterProvider:
//    - This is a custom class (defined in `counter_provider.dart`) extending `ChangeNotifier`.
//    - It encapsulates the logic for managing the counter state (e.g., incrementing the count).
//    - It provides methods (like `incrementCount`) and a getter (`getCount`) to access or modify the state.
//    - When `notifyListeners()` is called in the `CounterProvider`, it triggers a rebuild for widgets consuming this provider.

// 3. Consumer:
//    - The `Consumer` widget listens to changes in the provided state (`CounterProvider` in this case).
//    - It has a `builder` function that rebuilds the widget tree only when the provider notifies of a change.
//    - In this code, `Consumer<CounterProvider>` is used to rebuild only the part of the UI showing the counter value.
//    - The `builder` function parameters are:
//      - `ctx`: The current BuildContext.
//      - `_`: The provided value (ignored in this case using `_`).
//      - `__`: The child widget passed to Consumer (if any; also ignored here).

// 4. Provider.of:
//    - This is another way to access the provider's state directly within a widget.
//    - The `listen` parameter determines whether the widget should rebuild when the state changes:
//      - `listen: true`: The widget rebuilds when the provider's state updates (not recommended inside the `Consumer` as it already listens).
//      - `listen: false`: The widget does not rebuild on state changes (used when only modifying state, like in the `onPressed` callback).

// 5. FloatingActionButton with Provider:
//    - The `onPressed` callback accesses the `CounterProvider` using `Provider.of` with `listen: false`.
//    - It calls `incrementCount` to increment the counter value.
//    - Since `listen` is false, this part of the widget tree won't rebuild when the state changes.
//    - The Consumer widget ensures only the relevant UI (the counter text) rebuilds.

// 6. Provider's Role in This Code:
//    - The `ChangeNotifierProvider` acts as a central point to provide the `CounterProvider` state to the widget tree.
//    - The `Consumer` ensures efficient rebuilding of only the necessary widgets (in this case, the counter text).
//    - `Provider.of` is used for state modification without triggering unnecessary rebuilds.
