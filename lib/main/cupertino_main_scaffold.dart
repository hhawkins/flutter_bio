import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bio/main/tab_item.dart';

class CupertinoMainScaffold extends StatelessWidget {
  const CupertinoMainScaffold(
      {
        Key key,
        @required this.currentTab,
        @required this.onSelectTab,
        @required this.widgetBuilders,
      }) : super(key: key);

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;
  final Map<TabItem, WidgetBuilder> widgetBuilders;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          _buildItem(TabItem.home),
          _buildItem(TabItem.hamza),
          _buildItem(TabItem.delaf),
          _buildItem(TabItem.seni),
          _buildItem(TabItem.alpha),
        ],
        onTap: (index) => onSelectTab(TabItem.values[index]),
      ),
      tabBuilder: (context, index) {
        final item = TabItem.values[index];
        return CupertinoTabView(
          builder: (context) {
            return CupertinoTabView(
              builder: (context) => widgetBuilders[item](context),
            );
          }
        );
      },
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    final itemData = TabItemData.allTabs[tabItem];
    final color = currentTab == tabItem ? Colors.indigo : Colors.grey;
    return BottomNavigationBarItem(
      icon: Icon(
        itemData.icon,
        color: color,
      ),
      title: Text(itemData.title,
          style: TextStyle(
            color: color,
          )),
    );
  }
}
