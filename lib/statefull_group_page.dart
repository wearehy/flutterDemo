import 'dart:ui';


import 'package:flutter/material.dart';

class StateFullGroup extends StatefulWidget {
  @override
  _StateFullGroupState createState() => _StateFullGroupState();
}

class _StateFullGroupState extends State<StateFullGroup> {
  int _currentIndex = 0;
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          items:  [
            BottomNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.grey),
              activeIcon: Icon(Icons.home,color: Colors.blue),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list,color: Colors.grey),
              activeIcon: Icon(Icons.list,color: Colors.blue),
              title: Text('列表')
            ),
          ]
        ),
        floatingActionButton:  FloatingActionButton(
          onPressed: null,
          child: Text('点我')
        ),
        body: _currentIndex == 0?RefreshIndicator(child: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white),
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  Image.network(               //图片
                    'http://www.devio.org/img/avatar.png',
                    width: 100,
                    height: 100,
                  ),
                  TextField(                    //输入栏
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      hintText: '请输入',
                      hintStyle: TextStyle(fontSize: 16)
                    ),
                  ),
                  Container(                              //轮播
                    height: 100,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(color: Colors.lightBlueAccent),
                    child: PageView(
                      children: <Widget>[
                        _item('Page1',Colors.deepPurple),
                        _item('Page2',Colors.deepPurple),
                        _item('Page3',Colors.deepPurple),
                      ],
                    ),
                  ),
                  Text(                         //文本
                    'I am Text',
                    style: textStyle,
                  ),
                  Icon(Icons.android,size: 50,color: Colors.red),
                  CloseButton(),                //关闭按钮  x
                  BackButton(),                 //返回按钮  ←
                  Chip(                         //图片加文字的小组件
                    avatar: Icon(Icons.people),
                    label: Text('StatelessWidget与基础组件'),
                  ),
                  Divider(                       //下划线
                    height: 10,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.orange,
                  ),
                  Card(                           //卡片
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
                  AlertDialog(                      //弹窗
                      title: Text('盘小龙'),
                      content: Text('你个糟老头子坏得很')
                  ),
                ],
              ),
            )
          ],
        ), onRefresh: _handleRefresh):Text('列表'),
      ),
    );
  }
  Future<Null>_handleRefresh() async{
    await Future.delayed(Duration(milliseconds: 200));
    return null;
  }
  _item(String title,MaterialColor color){
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color),
      child: Text(title,style: TextStyle(fontSize: 22,color: Colors.white))
    );
  }
}

