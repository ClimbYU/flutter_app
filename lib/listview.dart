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
  List<Widget> _getList() {
    var list = listData.map((value) {
      return ListTile(
        leading: Image.network(value['img']),
        title: Text(value['title']),
        subtitle: Text(value['sub']),
      );
    });

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 180,
      // width: 200,
      // alignment: Alignment.topLeft,
      child: ListView(
        // scrollDirection: Axis.horizontal,
        children: this._getList(),
      ),
    );
  }
}
