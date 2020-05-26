
import 'package:demo1/less_group_page.dart';
import 'package:demo1/page_val/list_index.dart';

import 'package:demo1/statefull_group_page.dart';
import 'package:flutter/material.dart';

import 'copy_group_page.dart';
import 'index.dart';
import 'my_container.dart';
import 'my_main2.dart';
import 'my_main.dart';
import 'my_row.dart';


void main() => runApp( MyApp() );

class StateFullGroupState {
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabbar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Index(),
    );
  }
}