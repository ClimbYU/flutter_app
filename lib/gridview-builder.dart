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
  Widget _getData(context, index) {
    return Container(
      child: Column(children: <Widget>[
        Image.network(listData[index]['img']),
        SizedBox(
          height: 20,
        ),
        Text(
          listData[index]['title'],
          style: TextStyle(
            color: Colors.redAccent,
          ),
        ),
      ]),
      color: Colors.lightGreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return GridView.count(
    //   crossAxisCount: 2,
    //   crossAxisSpacing: 10.0,
    //   mainAxisSpacing: 10.0,
    //   padding: EdgeInsets.all(10.0),
    //   // childAspectRatio: 0.8,
    //   children: this._getData(),
    // );

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: listData.length,
      itemBuilder: this._getData,
    );
  }
}
