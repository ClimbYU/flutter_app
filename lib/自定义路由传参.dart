import 'package:flutter/material.dart';
import 'pages1/Tabs.dart';
import 'pages1/tabs/Searchpage.dart';
import 'pages1/tabs/Settingpage.dart';
import 'pages1/tabs/Homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    '/search': (context, {arguments}) => Searchpage(arguments: arguments),
    '/setting': (context) => Settingpage(),
    '/home': (context) => Homepage(),
  };
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Tabs(),
      onGenerateRoute: (RouteSettings settings) {
        final String name = settings.name;
        final Function pageContentBuilder = this.routes[name];
        if (pageContentBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageContentBuilder(context, arguments: settings.arguments));
            return route;
          } else {
            final Route route = MaterialPageRoute(
                builder: (context) => pageContentBuilder(context));
            return route;
          }
        }
      },
    );
  }
}
