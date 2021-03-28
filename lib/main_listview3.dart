import 'package:flutter/material.dart';
import 'res/data.dart';

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
    //List<Widget> views = [];
    var views = listData.map((value) {
      return ListTile(
        title: Text(
          value["title"],
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
        subtitle: Text(value["author"]),
        leading: Image.network(
          value["imgUrl"],
          width: 100,
          height: 100,
        ),
      );
    });

    return views.toList();
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
