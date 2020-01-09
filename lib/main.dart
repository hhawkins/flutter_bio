import 'package:flutter/cupertino.dart';
import 'package:flutter_bio/main/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final homePage = MainPage();

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Team Bios',
      home: homePage,
    );
  }
}