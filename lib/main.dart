import 'package:flutter/material.dart';

import 'package:acm_developers_1/task_page.dart';

import 'package:acm_developers_1/task.dart';

void main() => runApp(FirstToDoApp());

class FirstToDoApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ToDoState();
  }
}

class ToDoState extends State<FirstToDoApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "To Do App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("To Do"),
          backgroundColor: Colors.amber,
        ),
        body: TaskPage(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Task("hey")),
            );
            //todo
          },
          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }
}
