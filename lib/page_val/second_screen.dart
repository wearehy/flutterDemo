import 'package:demo1/page_val/list_plug.dart';
import 'package:flutter/material.dart';
/***第二页***/
class SecondScreen extends StatefulWidget {
  final setList myList;
  SecondScreen({Key key, @required this.myList}) : super(key: key);

  @override
  _SecondScreen createState() => _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('页面二 ${widget.myList.title}'),
        ),
        body: Center(
          child: GestureDetector(
            child: Text('${widget.myList.description}'),
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}