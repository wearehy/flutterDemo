import 'package:flutter/material.dart';
import 'package:flutter_color_plugin/flutter_color_plugin.dart';


class PluginUse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '如何使用插件包',
      theme: ThemeData(
        fontFamily: "PingFang",

      ),

      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(
            '如何使用插件包',
            style: TextStyle(fontSize: 15.0)
          ),
        ),

        body: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:11',
                style: TextStyle(color: ColorUtil.color('#899900'),fontSize: 12.0)
              ),
            ]
          ),
        ),
      ),
    );
  }
}