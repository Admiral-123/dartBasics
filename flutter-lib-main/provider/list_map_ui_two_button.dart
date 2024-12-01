import 'package:flutter/material.dart';
import 'package:learn_provider/main.dart';
import 'list_map_provider.dart';
import 'package:provider/provider.dart';

class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('adder'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              context
                  .read<ListMapProvider>()
                  .addData({"name": "contact", "num": "88778979"});
            },
            child: const Icon(Icons.add),
          ),
          InkWell(
            onTap: () {
              context.read<ListMapProvider>().removeData();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

