import 'package:flutter/cupertino.dart';

class Hamza extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        const CupertinoSliverNavigationBar(
          largeTitle: Text('Hamza Hawkins'),
        ),
      ],
    );
  }
}