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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(title: Text(title)),
            body: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: listData.length,
                itemBuilder: _getItem)));
  }
}

Widget _getItem(BuildContext context, int index) {
  return Padding(
    padding: EdgeInsets.fromLTRB(0, 0, 6, 0),
    child: Padding(
        padding: EdgeInsets.fromLTRB(6, 6, 0, 0),
        child: Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.all(2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: Colors.blue)),
          child: Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Image.network(
                    listData[index]['imgUrl'],
                    fit: BoxFit.cover,
                  )),
              SizedBox(height: 6),
              Text(
                listData[index]['title'],
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
        )),
  );
}
