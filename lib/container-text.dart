import 'package:flutter/material.dart';

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
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          'hellohellohellohellohellohellohellohellohellohellohello',
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          textScaleFactor: 2.0,
          style: TextStyle(
            color: Colors.red,
            fontSize: 22.0,
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.underline,
            decorationColor: Colors.blue,
            decorationStyle: TextDecorationStyle.dotted,
          ),
        ),
        width: 350.0,
        height: 500.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
            color: Colors.red,
            width: 2.0,
          ),
          // borderRadius: BorderRadius.circular(10.0),
          borderRadius: BorderRadius.all(
            Radius.circular(25.0),
          ),
        ),
        padding: EdgeInsets.all(12.0),
        margin: EdgeInsets.fromLTRB(12.0, 20.0, 12.0, 2.0),
        // transform: Matrix4.translationValues(12.0, 20.0, 0.0),
        // transform: Matrix4.diagonal3Values(1, 1.5, 0),
        // transform: Matrix4.skew(12, 20),
        alignment: Alignment.center,
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hello'),
//         ),
//         body: HomeContent(),
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Center(
//       child: Text(
//         '你好1',
//         textDirection: TextDirection.ltr,
//         style:
//             TextStyle(fontSize: 40.0, color: Color.fromARGB(243, 234, 321, 1)),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:english_words/english_words.dart';

// void main() => runApp(new MyApp());

// class MyApp extends StatelessWidget {
//   // final wordPair = new WordPair.random();
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Welcome to Flutter',
//       home: new RandomWords(),
//       theme: new ThemeData(
//         primaryColor: Colors.white,
//       ),
//     );
//   }
// }

// class RandomWordsState extends State<RandomWords> {
//   final _suggestion = <WordPair>[];

//   final _biggerFont = const TextStyle(fontSize: 18.0);

//   final _saved = new Set<WordPair>();
//   Widget _buildSuggestions() {
//     return new ListView.builder(
//         padding: const EdgeInsets.all(0.6),
//         itemBuilder: (context, i) {
//           print('---${_suggestion.length}----');
//           if (i.isOdd) {
//             return new Divider();
//           }
//           final index = i ~/ 2;
//           if (index >= _suggestion.length) {
//             _suggestion.addAll(generateWordPairs().take(10));
//           }
//           return _buildRow(_suggestion[index]);
//         });
//   }

//   Widget _buildRow(WordPair pair) {
//     final alreadySaved = _saved.contains(pair);
//     return new ListTile(
//       title: new Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: new Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : null,
//       ),
//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context).push(new MaterialPageRoute(
//       builder: (context) {
//         final tiles = _saved.map((pair) {
//           return new ListTile(
//             title: new Text(
//               pair.asPascalCase,
//               style: _biggerFont,
//             ),
//           );
//         });
//         final divided = ListTile.divideTiles(
//           context: context,
//           tiles: tiles,
//         ).toList();

//         return new Scaffold(
//           appBar: new AppBar(title: new Text('saved suggestion')),
//           body: new ListView(children: divided),
//         );
//       },
//     ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     // final wordPair = new WordPair.random();
//     // return (new Text(wordPair.asPascalCase));
//     return new Scaffold(
//       appBar: new AppBar(
//         title: new Text('Startup Name Generator'),
//         actions: <Widget>[
//           new IconButton(icon: new Icon(Icons.list), onPressed: _pushSaved)
//         ],
//       ),
//       body: _buildSuggestions(),
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   createState() => new RandomWordsState();
// }

/****test2 */
// import 'package:flutter/material.dart';

// class MyAppBar extends StatelessWidget {
//   MyAppBar({this.title});

//   // Widget子类中的字段往往都会定义为"final"

//   final Widget title;

//   @override
//   Widget build(BuildContext context) {
//     return new Container(
//       height: 56.0, // 单位是逻辑上的像素（并非真实的像素，类似于浏览器中的像素）
//       padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       decoration: new BoxDecoration(color: Colors.blue[500]),
//       // Row 是水平方向的线性布局（linear layout）
//       child: new Row(
//         //列表项的类型是 <Widget>
//         children: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.menu),
//             tooltip: 'Navigation menu',
//             onPressed: null, // null 会禁用 button
//           ),
//           // Expanded expands its child to fill the available space.
//           new Expanded(
//             child: title,
//           ),
//           new IconButton(
//             icon: new Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MyScaffold extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Material 是UI呈现的“一张纸”
//     return new Material(
//       // Column is 垂直方向的线性布局.
//       child: new Column(
//         children: <Widget>[
//           new MyAppBar(
//             title: new Text(
//               'Example title',
//               style: Theme.of(context).primaryTextTheme.title,
//             ),
//           ),
//           new Expanded(
//             child: new Center(
//               child: new Text('Hello, world!'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(new MaterialApp(
//     title: 'My app', // used by the OS task switcher
//     home: new MyScaffold(),
//   ));
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(new MaterialApp(
//     title: 'Flutter Tutorial',
//     home: new TutorialHome(),
//   ));
// }

// class TutorialHome extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     //Scaffold是Material中主要的布局组件.
//     return new Scaffold(
//       appBar: new AppBar(
//         leading: new IconButton(
//           icon: new Icon(Icons.menu),
//           tooltip: 'Navigation menu',
//           onPressed: null,
//         ),
//         title: new Text('Example title'),
//         actions: <Widget>[
//           new IconButton(
//             icon: new Icon(Icons.search),
//             tooltip: 'Search',
//             onPressed: null,
//           ),
//         ],
//       ),
//       //body占屏幕的大部分
//       body: new Center(
//         child: new Text('Hello, world!'),
//       ),
//       floatingActionButton: new FloatingActionButton(
//         tooltip: 'Add', // used by assistive technologies
//         child: new Icon(Icons.add),
//         onPressed: null,
//       ),
//     );
//   }
// }
