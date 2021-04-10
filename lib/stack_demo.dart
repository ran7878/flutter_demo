import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stack dmeo',
      home: Scaffold(
        appBar: AppBar(title: Text('Stack demo')),
        body: MyStack(),
      ),
    );
  }
}

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 500,
      decoration: BoxDecoration(color: Colors.red),
      child: Container(
        decoration: BoxDecoration(color: Colors.yellow),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('nihao'),
            ),
            Align(
              alignment: Alignment.center,
              child: Text('你好'),
            ),
            Align(alignment: Alignment.bottomRight, child: Text('hello')),
            Positioned(
                left: 100,
                top: 100,
                child: Image.network(
                    'https://pic2.zhimg.com/v2-59ca5fedcfe1bbc1061fd56f87a61116_1440w.jpg?source=172ae18b',
                    width: 100,
                    height: 100))
          ],
        ),
      ),
    );
  }
}
