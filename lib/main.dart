import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_shop/pages/index_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.pink
      ),
      home: IndexPage(),
    );
  }
}
