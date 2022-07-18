import 'package:flutter/material.dart';
import '../home/home_page.dart';
import '../global_config.dart';
void main() => runApp(new Zhihu());

class Zhihu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "模仿知乎",
      home: new HomePage(),
      theme: GlobalConfig.themeData,
    );
  }
}

