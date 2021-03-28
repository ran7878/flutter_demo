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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title:title,
    home: Scaffold(
      appBar: AppBar(
        title: Text(title)
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("标题1"),
            subtitle: Text("副标题1"),
            leading: Image.network("https://i2.chuimg.com/160fc68bd173463f9b4c1a88709348e9_768w_1024h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题2"),
              subtitle: Text("副标题2"),
              leading: Image.network("https://i2.chuimg.com/493760bfb65148008da5a047cd698bed_2100w_2800h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题3"),
              subtitle: Text("副标题3"),
              leading: Image.network("https://i2.chuimg.com/c96169e63d5a44ec87c158e6dd9d9be4_563w_1001h.png?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题4"),
              subtitle: Text("副标题4"),
              leading: Image.network("https://i2.chuimg.com/6ca222083d03408d97604b6ef6ec5aae_750w_1000h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题5"),
              subtitle: Text("副标题5"),
              trailing: Image.network("https://i2.chuimg.com/e7c80bdee9c011e6947d0242ac110002_800w_533h.jpg?imageView2/1/w/150/h/90/interlace/1/q/90")
          ),ListTile(
              title: Text("标题1"),
              subtitle: Text("副标题1"),
              trailing: Image.network("https://i2.chuimg.com/160fc68bd173463f9b4c1a88709348e9_768w_1024h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题2"),
              subtitle: Text("副标题2"),
              trailing: Image.network("https://i2.chuimg.com/493760bfb65148008da5a047cd698bed_2100w_2800h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题3"),
              subtitle: Text("副标题3"),
              trailing: Image.network("https://i2.chuimg.com/c96169e63d5a44ec87c158e6dd9d9be4_563w_1001h.png?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题4"),
              subtitle: Text("副标题4"),
              trailing: Image.network("https://i2.chuimg.com/6ca222083d03408d97604b6ef6ec5aae_750w_1000h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题5"),
              subtitle: Text("副标题5"),
              trailing: Image.network("https://i2.chuimg.com/e7c80bdee9c011e6947d0242ac110002_800w_533h.jpg?imageView2/1/w/150/h/90/interlace/1/q/90")
          ),ListTile(
              title: Text("标题1"),
              subtitle: Text("副标题1"),
              trailing: Image.network("https://i2.chuimg.com/160fc68bd173463f9b4c1a88709348e9_768w_1024h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题2"),
              subtitle: Text("副标题2"),
              trailing: Image.network("https://i2.chuimg.com/493760bfb65148008da5a047cd698bed_2100w_2800h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题3"),
              subtitle: Text("副标题3"),
              trailing: Image.network("https://i2.chuimg.com/c96169e63d5a44ec87c158e6dd9d9be4_563w_1001h.png?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题4"),
              subtitle: Text("副标题4"),
              trailing: Image.network("https://i2.chuimg.com/6ca222083d03408d97604b6ef6ec5aae_750w_1000h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题5"),
              subtitle: Text("副标题5"),
              trailing: Image.network("https://i2.chuimg.com/e7c80bdee9c011e6947d0242ac110002_800w_533h.jpg?imageView2/1/w/150/h/90/interlace/1/q/90")
          ),ListTile(
              title: Text("标题1"),
              subtitle: Text("副标题1"),
              trailing: Image.network("https://i2.chuimg.com/160fc68bd173463f9b4c1a88709348e9_768w_1024h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题2"),
              subtitle: Text("副标题2"),
              trailing: Image.network("https://i2.chuimg.com/493760bfb65148008da5a047cd698bed_2100w_2800h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题3"),
              subtitle: Text("副标题3"),
              trailing: Image.network("https://i2.chuimg.com/c96169e63d5a44ec87c158e6dd9d9be4_563w_1001h.png?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题4"),
              subtitle: Text("副标题4"),
              trailing: Image.network("https://i2.chuimg.com/6ca222083d03408d97604b6ef6ec5aae_750w_1000h.jpg?imageView2/1/w/235/h/138/interlace/1/q/90")
          ),
          ListTile(
              title: Text("标题5"),
              subtitle: Text("副标题5"),
              trailing: Image.network("https://i2.chuimg.com/e7c80bdee9c011e6947d0242ac110002_800w_533h.jpg?imageView2/1/w/150/h/90/interlace/1/q/90")
          )
        ],
      ),
    )
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return new Rect.fromLTWH(0,0,200,200);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }
}

/*class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/
