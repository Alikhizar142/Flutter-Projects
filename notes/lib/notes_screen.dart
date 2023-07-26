import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:notes/Provider/notes_provider.dart';
import 'package:provider/provider.dart';

class Notes_Screen extends StatelessWidget {
  const Notes_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Notesprovider>(builder: (context, provider, child) {
      return SafeArea(
          child: Container(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            shadowColor: Colors.white,
            title: Text(
              "Notes",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.amber.shade300,
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                dialougeBox(context, provider);
              },
              child: const Icon(Icons.add)),
          body: ListView.builder(
              itemCount: provider.title.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: [
                        Text(
                          provider.title[index],
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          provider.description[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Times New Roman'),
                        ),
                      ]),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          provider.delteNote(index);
                        },
                        child: Icon(
                          Icons.delete_rounded,
                          color: Colors.redAccent,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          editdialougeBox(context, provider, index);
                          provider.delteNote(index);
                        },
                        child: Icon(
                          Icons.edit,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ));
    });
  }

  Future<void> dialougeBox(BuildContext context, Notesprovider provider) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              "Add Note",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel")),
              TextButton(
                  onPressed: () {
                    provider.Addnote();
                    Navigator.pop(context);
                    provider.title_control.clear();
                    provider.Description_control.clear();
                    finaladialougeBox(context);
                  },
                  child: const Text("Add")),
            ],
            content: Column(
              children: [
                TextFormField(
                    controller: provider.title_control,
                    maxLines: null,
                    decoration: const InputDecoration(
                      hintText: "Title",
                      focusColor: Colors.white,
                      fillColor: Colors.white,
                    )),
                TextFormField(
                  controller: provider.Description_control,
                  maxLines: null,
                  decoration: const InputDecoration(hintText: "Description"),
                )
              ],
            ),
          );
        });
  }
}

Future<void> editdialougeBox(
    BuildContext context, Notesprovider provider, int index) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Edit Note"),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Cancel")),
            TextButton(
                onPressed: () {
                  provider.editNote(index, provider.title_control.text,
                      provider.Description_control.text);
                  Navigator.pop(context);
                  provider.title_control.clear();
                  provider.Description_control.clear();
                  finaladialougeBox(context);
                },
                child: const Text("Edit")),
          ],
          content: Column(
            children: [
              TextFormField(
                controller: provider.title_control,
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: "title",
                ),
              ),
              TextFormField(
                controller: provider.Description_control,
                maxLines: null,
                decoration: const InputDecoration(hintText: "Description"),
              )
            ],
          ),
        );
      });
}

Future<void> finaladialougeBox(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: const Text("Note Added Successfully "),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("OK")),
            ]);
      });
}
