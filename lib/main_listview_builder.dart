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

  Widget getItems(BuildContext context, int index) {
    return ListTile(
      title: Text(listData[index]["title"]),
      subtitle: Text(listData[index]["author"]),
      trailing: Image.network(listData[index]["imgUrl"]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        home: Scaffold(
          appBar: AppBar(title: Text(title)),
          body: ListView.builder(
            itemCount: listData.length,
            itemBuilder: getItems
            /*(context, index) {
              return ListTile(
                title: Text(listData[index]["title"]),
                subtitle: Text(
                  listData[index]["author"],
                  style: TextStyle(color: Colors.green),
                ),
                trailing: Image.network(listData[index]["imgUrl"]),
              );
            }*/
            ,
          ),
        ));
  }
}
