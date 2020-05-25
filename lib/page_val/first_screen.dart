import 'package:demo1/page_val/list_plug.dart';
import 'package:demo1/page_val/second_screen.dart';
import 'package:flutter/material.dart';
/*** 第一页 ****/
class FirstScreen extends StatefulWidget {
  final List<setList> setLists;
  FirstScreen(this.setLists);
  @override
  _FirstScreen createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("页面之间传参页面一"),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: widget.setLists.length,
            itemBuilder: (context,index){
              return new ListTile(
                title: Text(widget.setLists[index].title),
                onTap: (){
                  Navigator.push(context, new MaterialPageRoute(
                      builder: (context) => new SecondScreen(myList: widget.setLists[index])
                  ));
                },
              );
            }
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}