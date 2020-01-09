import 'package:flutter/material.dart';
import 'package:flutter_bio/home/cupertino_home_scaffold.dart';
import 'package:flutter_bio/home/tab_item.dart';
import 'package:flutter_bio/home/tabs/hamza.dart';
import 'package:flutter_bio/home/tabs/home.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabItem _currentTab = TabItem.home;

  Map<TabItem, WidgetBuilder> get widgetBuilders {
    return {
      TabItem.home: (_) => Home(),
      TabItem.hamza: (_) => Hamza(),
      TabItem.delaf: (_) => Container(),
      TabItem.seni: (_) => Container(),
      TabItem.alpha: (_) => Container(),
    };
  }

  void _select(TabItem tabItem) {
    setState(() => _currentTab = tabItem);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoHomeScaffold(
      currentTab: _currentTab,
      onSelectTab: _select,
      widgetBuilders: widgetBuilders,
    );
  }
}