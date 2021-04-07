import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'row demo',
        home: Scaffold(
          appBar: AppBar(title: Text('Row练习')),
          body: MyRow(),
        ));
  }
}

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            MyIcon(Icons.home, size: 32, color: Colors.red),
            MyIcon(Icons.ac_unit_sharp, color: Colors.green),
            MyIcon(
              Icons.sanitizer,
              color: Colors.blue,
            )
          ]),
    );
  }
}

class MyIcon extends StatelessWidget {
  //声明的变量为final类型 否则报警告
  final IconData icon;
  final double size;
  final Color color;

  //默认值的写法注意一下
  MyIcon(this.icon, {this.size = 32, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(color: this.color),
      alignment: Alignment.center,
      child: Icon(this.icon, size: this.size, color: Colors.yellow),
    );
  }
}
