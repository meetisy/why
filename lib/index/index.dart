import 'package:flutter/material.dart';
import 'navigation_icon_view.dart';
import '../global_config.dart';
import '../home/home_page.dart';
import '../idea/idea_page.dart';
import '../market/market_page.dart';
import '../notice/notice_page.dart';
import '../my/my_page.dart';

class Index extends StatefulWidget {

  @override
  State<Index> createState() => new _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin{

  int _currentIndex = 0;
  List<StatefulWidget>? _pageList;
  StatefulWidget? _currentPage;

  @override
  void initState() {
    super.initState();
    _pageList = <StatefulWidget>[
      new HomePage(),
      new IdeaPage(),
      new MarketPage(),
      new NoticePage(),
      new MyPage()
    ];
    _currentPage = _pageList![_currentIndex];
  }

  void _rebuild() {
    setState((){});
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          body: new Center(
              child: _currentPage
          ),
        ),
        theme: GlobalConfig.themeData
    );
  }

}