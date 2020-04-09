import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:acm_developers_1/task.dart';

class TaskPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TaskPageState();
  }
}

class _TaskPageState extends State<TaskPage> {
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: ListView(children: <Widget>[
          Task("AGAŞLSDKFSLAŞKİ"),
          Task("AGAŞLSDKFSLAŞKİ"),
          Task("AGAŞLSDKFSLAŞKİ"),
          Task("AGAŞLSDKFSLAŞKİ"),
          Task("AGAŞLSDKFSLAŞKİ"),
          Task("AGAŞLSDKFSLAŞKİ"),
          Task("AGAŞLSDKFSLAŞKİ"),
          Task("AGAŞLSDKFSLAŞKİ"),
          Task("AGAŞLSDKFSLAŞKİ"),
          Task("AGAŞLSDKFSLAŞKİ"),
          Task("AGAŞLSDKFSLAŞKİ"),
        ]));
  }
}
