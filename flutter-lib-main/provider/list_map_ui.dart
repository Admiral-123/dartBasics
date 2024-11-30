import 'package:flutter/material.dart';
import 'package:learn_provider/list_map_provider.dart';
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
        // use MultiProvider if multiple providers
        home: MultiProvider(providers: [
          ChangeNotifierProvider(create: (context) => CounterProvider()),
          ChangeNotifierProvider(create: (context) => ListMapProvider())
        ], child: const ListMapUi()));
  }
}

class ListMapUi extends StatelessWidget {
  const ListMapUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('list map'),
        backgroundColor: Colors.amber,
      ),
      // ignore: avoid_types_as_parameter_names
      body: Consumer<ListMapProvider>(builder: (ctx, provider, _) {
        var allData = provider.getData();
        return allData.isNotEmpty
            ? ListView.builder(
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text('${allData[index]['name']}'),
                    subtitle: Text('${allData[index]['num']}'),
                  );
                },
                itemCount: allData.length,
              )
            : const Center(
                child: Text('no txt'),
              );
      }),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<ListMapProvider>().removeData();
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              context
                  .read<ListMapProvider>()
                  .addData({"name": "contact name", "num": "7777777"});
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}


/*
ctx: Refers to the build context for the Consumer widget. Use it for operations like Theme.of(ctx) or Navigator.of(ctx).
Provider: Refers to the ListMapProvider instance. You use it to call methods like Provider.getData() or Provider.addData().
_: Refers to the child argument. Since you haven’t passed a static widget as the child in the Consumer, this remains unused and is named _.
 */
