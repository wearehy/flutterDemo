import 'package:flutter/material.dart';

class MyRow extends StatefulWidget {
  @override
  _MyApp createState () => _MyApp();
}

class _MyApp extends State {
  @override
  Widget build(BuildContext context){

    Widget titleSection = Container(
      padding: EdgeInsets.all(12),
      child: Row(
        children: <Widget>[


          Container(
            width: 40,
            child: Text(
              '我仿佛尴尬',
            ),
            color: Colors.red,
            padding: EdgeInsets.all(10.0),
          ),


          Expanded(
            child: Container(
              child: Text(
                  '一地在要工',

              ),
              color: Colors.yellow,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 2,
          ),
          Expanded(
            child: Container(
              child: Text(
                '自知则知之这种'
              ),
              color: Colors.blue,
              padding: EdgeInsets.all(15.0),
            ),
            flex: 1,
          ),
        ],
      ),
    );


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('mcl'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/img/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,

          ],
        ),
      ),
    );
  }
}
