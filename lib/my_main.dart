import 'package:demo1/my_main2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyMain extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = new Container(//左图中的第二个红框部分
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start, //子项左对齐
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0), //底部添加8像素填充
                  child: new Text(
                    'Oeschinen Lake Campground',
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg, Switzerland',
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          IconButton(icon: Icon(Icons.star), color: Colors.red[500],onPressed: () => {
//            MaterialPageRoute(builder: (context) => MyMain2())
//            Navigator.push(context, new MaterialPageRoute(
//              builder: (context) => MyMain2()
//            ))
            Navigator.push(context, new CupertinoPageRoute(
              //MaterialPageRoute换成CupertinoPageRoute,
              // MaterialPageRoute IOS左右、android上下,
              // CupertinoPageRoute 都是左右
              builder: (context) => MyMain2()
            ))
          }),
          new Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {//嵌套函数：把共同的属性写好，方便buttonSection调用
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(//左图中的第三个红框部分
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, //平均的分配每个列占据的行空间
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = new Container(//左图中的第四个红框部分
      padding: const EdgeInsets.all(32), //每条边添加32像素
      child: new Text(
        '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
        softWrap: true, //文本是否应在软换行符（例如句点或逗号）之间断开
      ),
    );


    return new MaterialApp(//必须写在后面
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('官网页面案例'),
        ),
        body: new ListView(
          children: [    //进行组合，把前面写的合在一起
            new Image.asset(
              'assets/img/lake.jpg',
              width: 600.0,
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}
