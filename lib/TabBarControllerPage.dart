import 'package:flutter/material.dart';

class TabarControllerPage extends StatefulWidget {
  TabarControllerPage({Key key}) : super(key: key);

  @override
  _TabarControllerPageState createState() => _TabarControllerPageState();
}

class _TabarControllerPageState extends State<TabarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabarControllerPage'),
        bottom: TabBar(
          controller: this._tabController,
          tabs: <Widget>[
            Tab(
              text: '推荐',
            ),
            Tab(
              text: '热门',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: this._tabController,
        children: <Widget>[
          Text('nihao'),
          Text('hello'),
        ],
      ),
    );
  }
}
