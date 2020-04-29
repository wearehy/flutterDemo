import 'package:demo1/less_group_page.dart';
import 'package:demo1/plugin_use.dart';
import 'package:demo1/statefull_group_page.dart';
import 'package:flutter/material.dart';

import 'copy_group_page.dart';
import 'my_app_02.dart';


void main() => runApp( MyApp2() );

class StateFullGroupState {
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}