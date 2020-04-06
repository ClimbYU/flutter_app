import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  final arguments;

  Searchpage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('searchPage'),
        ),
        body: Text('searchPage ${arguments != null ? arguments["id"] : "0"}'));
  }
}
