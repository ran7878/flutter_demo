import 'package:flutter/material.dart';
import 'package:flutter_app2/res/data.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card dmeo2',
      home: Scaffold(
        appBar: AppBar(title: Text('Card demo2')),
        body: MyCard(),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((item) {
        return Card(
          margin: EdgeInsets.all(16),
          color: Color.fromARGB(50, 200, 0, 0),
          elevation: 20,
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 24 / 9,
                  child: Image.network(item['imgUrl'], fit: BoxFit.cover)),
              ListTile(
                  contentPadding: EdgeInsets.fromLTRB(16, 10, 0, 5),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(item['imgUrl']),
                  ),
                  title: Text(
                    item['title'],
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.center, //主轴对齐方式
                    crossAxisAlignment: CrossAxisAlignment.start, //次轴对齐方式
                    children: [
                      SizedBox(height: 10), //为了设置subtitle和title之间的距离
                      Text(
                        item['author'],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      )
                    ],
                  ))
            ],
          ),
        );
      }).toList(),
    );
  }
}
