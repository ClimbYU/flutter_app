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
    // TODO: implement build
    return Container(
      child: Image.asset('images/image1.png'),

      //ClipOval显示圆角图片
      // child: ClipOval(
      //   child: Image.network(
      //     'https://r1.ykimg.com/050E00005D7F5E68ADA7B2A96F0E6950?x-oss-process=image/resize,w_240/quality,q_80',
      //     width: 150,
      //     height: 150,
      //     fit: BoxFit.cover,
      //   ),
      // ),

      //显示图片
      // child: Image.network(
      //   'https://r1.ykimg.com/050E00005D7F5E68ADA7B2A96F0E6950?x-oss-process=image/resize,w_240/quality,q_80',
      //   alignment: Alignment.center,
      //   // width: 100,
      //   // height: 100,
      //   fit: BoxFit.contain,
      //   repeat: ImageRepeat.repeatX,
      // ),

      //显示圆形图片
      // width: 300,
      // height: 300,
      // decoration: BoxDecoration(
      //   color: Colors.yellow,
      //   borderRadius: BorderRadius.circular(150.0),
      //   image: DecorationImage(
      //     image: NetworkImage(
      //         'https://r1.ykimg.com/050E00005D7F5E68ADA7B2A96F0E6950?x-oss-process=image/resize,w_240/quality,q_80'),
      //     repeat: ImageRepeat.noRepeat,
      //     fit: BoxFit.cover,
      //   ),
      // ),
    );
  }
}
