import 'package:flutter/material.dart';

void main() {
  runApp(const WhyApp());
}

class WhyApp extends StatelessWidget {
  const WhyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Widget appBar = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text("想法", style: TextStyle(fontSize: 16)),
        Text("推荐", style: TextStyle(fontSize: 16)),
        Text("热榜",style: TextStyle(fontSize: 16)),
        Icon(Icons.punch_clock_sharp)
      ],
    );


    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ListView(
          children: [appBar],
        ),
      )
    );
  }


}