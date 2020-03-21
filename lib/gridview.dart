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
  List<Widget> _getData() {
    // List<Widget> list = new List();
    // for (var i = 0; i < 20; i++) {
    //   list.add(Container(
    //     child: Text('$i'),
    //     alignment: Alignment.center,
    //     color: Color.fromRGBO(10 + i * 49, 100 + i * 32, 89 + i * 35, 1),
    //   ));
    // }

    // return list;
    var list = listData.map((value) {
      return Container(
        child: Column(children: <Widget>[
          Image.network(value['img']),
          SizedBox(
            height: 20,
          ),
          Text(
            value['title'],
            style: TextStyle(
              color: Colors.redAccent,
            ),
          ),
        ]),
        color: Colors.lightGreen,
      );
    });

    return list.toList();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      padding: EdgeInsets.all(10.0),
      // childAspectRatio: 0.8,
      children: this._getData(),
    );
  }
}
