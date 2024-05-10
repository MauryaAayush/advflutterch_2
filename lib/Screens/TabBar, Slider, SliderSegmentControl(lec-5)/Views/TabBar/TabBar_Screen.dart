import 'package:flutter/cupertino.dart';

class TabBar_Screen extends StatelessWidget {
  const TabBar_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Tab Bar'),
        ),
        child: Center(child: Text('Hello')));
  }
}
