import 'package:demo1/page_val/first_screen.dart';
import 'package:demo1/page_val/list_plug.dart';
import 'package:flutter/material.dart';
/***页面传参的首页***/
class ListIndex extends StatefulWidget {

  @override
  _ListIndex createState() => _ListIndex();
}

class _ListIndex extends State<ListIndex> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '页面之间传参',
      home: ListPlug(),
    );
  }
}