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
            body: GridView.count(
              crossAxisCount: 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
              children: [
                Text('hi-1'),
                Text('hi-2'),
                Text('hi-3'),
                Text('hi-4'),
                Text('hi-5'),
                Text('hi-6'),
                Text('hi-7'),
                Text('hi-8'),
                Text('hi-9')
              ],
            )));
  }
}
