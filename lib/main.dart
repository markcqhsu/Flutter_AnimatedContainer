import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double _height = 200;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedContainer(
          //如果要設定1分01秒, duration: Duration(seconds: 1, minutes: 1),
          duration: Duration(milliseconds: 1000),
          width: 300,
          height: 300,

          // child: Center(
          //     child: Text(
          //   "Hi",
          //   style: TextStyle(fontSize: 72),
          // )),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.2, 0.3],
              colors: [Colors.red, Colors.white],
            ),
            //增加邊框
            boxShadow: [BoxShadow(spreadRadius: 25, blurRadius: 25)],
            borderRadius: BorderRadius.circular(150),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _height +=100;
            if (_height >500) _height =200;
          });

        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
