import 'package:flutter/material.dart';

class LessGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(fontSize: 20.0);
    return new MaterialApp(
      title: '如何使用插件包',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),

      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'StatelessWidget与基础'
          ),
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.white),
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Text(
                'I am Text',
                style: textStyle,
              ),
              Icon(Icons.android,size: 50,color: Colors.red),
              CloseButton(),
              BackButton(),
              Chip(
                avatar: Icon(Icons.people),
                label: Text('StatelessWidget与基础组件'),
              ),
              Divider(
                height: 10,
                indent: 10,
                endIndent: 10,
                color: Colors.orange,
              ),
              Card(
                color: Colors.blue,
                elevation: 5,
                margin: EdgeInsets.all(10),
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'I am Card',
                    style: textStyle,
                  ),
                ),
              ),
              AlertDialog(
                title: Text('盘小龙'),
                content: Text('你个糟老头子坏得很')
              ),
            ],
          ),
        ),
      ),

    );
  }
}

