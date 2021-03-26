import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContentTest();

    /*return MaterialApp(
      title: '我的App',
      theme:ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: Text('My App')),
        body: Center(child:Content()),
      ),
    );*/
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 400.0,
        //padding: EdgeInsets.all(20.0),
        padding: EdgeInsets.symmetric(vertical:120.0,horizontal: 50.0),
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            color: Colors.amberAccent,
            border: Border.all(
                color: Colors.green, width: 2.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Text("this is a flutter application.",
            textScaleFactor: 1.0,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.ltr,
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
                decorationColor: Colors.greenAccent,
                decorationStyle: TextDecorationStyle.double,
                fontSize: 20.0,
                fontWeight: FontWeight.bold)));
  }
}

class ContentTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'open url',
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('hello flutter'),
        ),
        body: Center(
          child: DecoratedBox(
//              padding: EdgeInsets.all(16),
//            padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
//            padding: EdgeInsets.only(left: 10, right: 30),
            decoration: BoxDecoration(
              // 背景色
                color: Colors.lightBlueAccent,
                // 边框，
                border: Border.all(color: Colors.yellowAccent, style: BorderStyle.solid, width: 5),
                // 背景图
                image: new DecorationImage(
                    image: new NetworkImage(
                        'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1484037605,2864708693&fm=11&gp=0.jpg'),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow:[
                  BoxShadow(
                    color: Colors.redAccent,
                    offset: Offset(20, 20),
                    blurRadius: 10,
                  ),
                ]
            ),
            child: Container(
              height: 200,
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
