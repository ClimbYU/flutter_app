import 'package:flutter/material.dart';
// import 'pages1/Tabs.dart';//ereregdfv
import 'route/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      // home: Tabs(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}
