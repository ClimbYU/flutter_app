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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      color: Colors.teal,
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Icon(
              Icons.favorite_border,
              size: 30,
              color: Colors.white,
            ),
            left: 0,
          ),
          Positioned(
            child: Icon(
              Icons.score,
              size: 30,
              color: Colors.white,
            ),
            left: 200,
            top: 200,
          ),
        ],
      ),
    );
  }
}
