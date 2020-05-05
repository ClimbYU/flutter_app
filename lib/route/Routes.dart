import 'package:flutter/material.dart';

import '../pages2/tabs/Homepage.dart';
import '../pages2/tabs/Searchpage.dart';
import '../pages2/tabs/Settingpage.dart';
import '../pages2/Tabs.dart';
import '../AppBarDemo.dart';
import '../TabBarControllerPage.dart';

final routes = {
  '/': (context) => Tabs(),
  '/search': (context, {arguments}) => Searchpage(arguments: arguments),
  '/setting': (context) => Settingpage(),
  '/home': (context) => Homepage(),
  '/AppBarDemo': (context) => AppBarDemoPage(),
  '/TabarControllerPage': (context) => TabarControllerPage()
};
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
