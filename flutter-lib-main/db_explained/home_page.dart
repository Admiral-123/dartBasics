import 'package:db_project/data/local/db_helper.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // controllers
  TextEditingController title = TextEditingController();
  TextEditingController desc = TextEditingController();

  List<Map<String, dynamic>> allNotes = [];
  @override
  void initState() {
    super.initState();
    dbRef = DBHelper.getInstance;
    getNotes();
  }

  DBHelper? dbRef;
  void getNotes() async {
    allNotes = await dbRef!.getAllNotes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
      ),
      // notes visible on ui
      body: allNotes.isNotEmpty
          ? ListView.builder(
              itemCount: allNotes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  // leading: Text('${allNotes[index][DBHelper.COLUMN_NOTE_SNO]}'),
                  leading: const Icon(Icons.auto_awesome),
                  title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
                  subtitle: Text(allNotes[index][DBHelper.COLUMN_NOTE_DESC]),
                  trailing: SizedBox(
                    width: 50,
                    height: 40,
                    child: Row(
                      children: [
                        InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: 700,
                                      padding: const EdgeInsets.all(16.0),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(16),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize
                                            .min, // Ensures the modal adjusts its size
                                        children: [
                                          const Text(
                                            'Update Note',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(height: 16),
                                          TextField(
                                            controller: title,
                                            decoration: const InputDecoration(
                                              labelText: 'Title',
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          TextField(
                                            controller: desc,
                                            decoration: const InputDecoration(
                                              labelText: 'Description',
                                              border: OutlineInputBorder(),
                                            ),
                                            maxLines: 3,
                                          ),
                                          const SizedBox(height: 16),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    title.clear();
                                                    desc.clear();
                                                  },
                                                  child: const Text('cancel')),
                                              ElevatedButton(
                                                onPressed: () async {
                                                  // Add logic to save the note
                                                  if (title.text != '' &&
                                                      desc.text != '') {
                                                    await dbRef!.updateNote(
                                                        id: allNotes[index][
                                                            DBHelper
                                                                .COLUMN_NOTE_SNO],
                                                        title: title.text
                                                            .toString(),
                                                        desc: desc.text
                                                            .toString());

                                                    title.clear();
                                                    desc.clear();
                                                  }
                                                  Navigator.pop(
                                                      context); // Close the modal after adding a note

                                                  getNotes();
                                                },
                                                child: const Text('Update'),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: const Icon(Icons.edit)),
                        InkWell(
                          onTap: () async {
                            dbRef!.deleteNote(
                                id: allNotes[index][DBHelper.COLUMN_NOTE_SNO]);
                            getNotes();
                          },
                          child: Icon(
                            Icons.delete,
                            color: Colors.red[400],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })
          : const Center(
              child: Text('no notes yet'),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // note to be added

          // bool check =
          //     await dbRef!.addNote(myTitle: "new note", myDesc: "desc");
          // getNotes();
          // if (check) {
          //   getNotes();
          // }

          // when clicked on floating btn this'll pop up
          showModalBottomSheet(
            // elevation: 500,
            context: context,
            builder: (context) {
              return Container(
                height: 700,
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisSize:
                      MainAxisSize.min, // Ensures the modal adjusts its size
                  children: [
                    const Text(
                      'Add Note',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: title,
                      decoration: const InputDecoration(
                        labelText: 'Title',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: desc,
                      decoration: const InputDecoration(
                        labelText: 'Description',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                              title.clear();
                              desc.clear();
                            },
                            child: Text('cancel')),
                        ElevatedButton(
                          onPressed: () async {
                            // Add logic to save the note
                            if (title.text != '' && desc.text != '') {
                              await dbRef!.addNote(
                                  myTitle: title.text.toString(),
                                  myDesc: desc.text.toString());

                              title.clear();
                              desc.clear();
                            }
                            Navigator.pop(
                                context); // Close the modal after adding a note

                            getNotes();
                          },
                          child: const Text('Save'),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
