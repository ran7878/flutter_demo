import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card dmeo',
      home: Scaffold(
        appBar: AppBar(title: Text('Card demo')),
        body: MyCard(),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Card(
          margin: EdgeInsets.all(16),
          elevation: 10,
          color: Colors.teal,
          shadowColor: Colors.blue,
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 18 / 9,
                  child: Image.network(
                    "https://i2.chuimg.com/6ca222083d03408d97604b6ef6ec5aae_750w_1000h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90",
                    fit: BoxFit.cover,
                  )),
              ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i2.chuimg.com/6ca222083d03408d97604b6ef6ec5aae_750w_1000h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90')),
                title: Text('test title'),
                subtitle: Text('叫阿什拉夫卡家'),
              )
            ],
          ),
        )
      ],
    );
  }
}
