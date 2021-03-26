import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: '我的App',
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(title: Text('My App!')),
        body: Center(child:Content()),
      ),
    );
  }
}

class Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.0,
        height: 400.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.amberAccent,
            border: Border.all(
                color: Colors.green, width: 2.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Text("我是一条小青龙、小青龙、飞呀飞呀飞到天空中",
            textScaleFactor: 1.5,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.greenAccent,
                decorationStyle: TextDecorationStyle.dashed,
                fontSize: 50.0,
                fontWeight: FontWeight.bold)));
  }
}