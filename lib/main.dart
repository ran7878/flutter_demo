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