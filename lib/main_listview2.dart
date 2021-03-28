import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ListView Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  List<Widget> _getList() {
    List<String> list = [];
    for (int i = 0; i < 20; i++) {
      list.add("这是第$i个标题");
    }

    List<Widget> views = [];
    for (String item in list) {
      views.add(ListTile(
        title: Text(item),
      ));
    }
    return views;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(title: Text(title)),
          body: ListView(children: _getList()),
        ));
  }
}
