import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
        ),
        body: Center(
          child: HomeContent(),
        ),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  List list = new List();

  HomeContent() {
    for (var i = 0; i < 20; i++) {
      list.add('我是第$i');
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        print('111111  $context');
        return ListTile(
          title: Text(list[index]),
        );
      },
    );
  }
}
