import 'package:flutter/material.dart';

class FromPage extends StatelessWidget {
  String title;

  FromPage({this.title = 'search'});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('返回'),
        ),
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: ListView(children: <Widget>[
          ListTile(
            leading: Icon(Icons.format_align_center),
            title: Text('form'),
          ),
          ListTile(
            leading: Icon(Icons.format_align_center),
            title: Text('form'),
          ),
          ListTile(
            leading: Icon(Icons.format_align_center),
            title: Text('form'),
          )
        ]),
      ),
    );
  }
}
