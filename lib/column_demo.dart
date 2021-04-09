import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'column dmeo',
      home: Scaffold(
        appBar: AppBar(title: Text('column demo')),
        body: MyColumn(),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 500,
      decoration: BoxDecoration(color: Colors.red),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.network(
              "https://www.baidu.com/img/flexible/logo/pc/result@2.png",
              width: 160,
              height: 90),
          Text('this is a desc')
        ],
      ),
    );
  }
}
