import 'package:flutter/material.dart';
import 'package:fluttercorreios/page/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Correios',
      theme: ThemeData(primaryColor: Colors.yellow[800]),
      home: HomePage(),
    );
  }
}
