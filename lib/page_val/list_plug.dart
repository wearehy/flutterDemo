import 'package:demo1/page_val/first_screen.dart';
import 'package:flutter/material.dart';
/***数据***/

final setLists = new List<setList>.generate(15, (i) => new setList('我是标题$i','我是详细内容$i'));
class setList {
  final String title;
  final String description;

  setList(this.title,this.description);
}
class ListPlug extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new FirstScreen(setLists);
  }

}

