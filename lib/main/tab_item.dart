import 'package:flutter/material.dart';

enum TabItem { home, hamza, delaf, seni, alpha }

class TabItemData {
  const TabItemData({@required this.title, @required this.icon});

  final String title;
  final IconData icon;

  static const Map<TabItem, TabItemData> allTabs = {
    TabItem.home: TabItemData(title: 'Home', icon: Icons.work),
    TabItem.hamza: TabItemData(title: 'Hamza', icon: Icons.person),
    TabItem.delaf: TabItemData(title: 'Delaf', icon: Icons.person),
    TabItem.seni: TabItemData(title: 'Seni', icon: Icons.person),
    TabItem.alpha: TabItemData(title: 'Alpha', icon: Icons.person),
  };
}