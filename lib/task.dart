import 'package:flutter/material.dart';

class Task extends StatefulWidget {
  final String _text;

  Task(this._text);

  @override
  _TaskState createState() => _TaskState(_text);
}

class _TaskState extends State<Task> {
  final String _text;
  var _borderRadius = BorderRadius.circular(50.0);
  Color color = Colors.amber;
  bool checked = false;

  _TaskState(this._text);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        height: 100.0,
        child: InkWell(
          onDoubleTap: () {
            // TODO: Update this onDoubleTap property to call _deleteTask()
          },
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () {
            // TODO: Update this onTap property to call _editTask()
            print('I was tapped!');
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Checkbox(
                    value: checked,
                    onChanged: (bool val) {
                      setState(() {
                        checked = !checked;
                      });
                    },
                  )),
              Center(
                child: Text(
                  _text,
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
