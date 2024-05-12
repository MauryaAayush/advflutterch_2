import 'package:flutter/cupertino.dart';

class Sliding_segment extends StatelessWidget {
  const Sliding_segment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('Title'),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: 100,
              width: 100,
              color: CupertinoColors.activeBlue,
            ),
          )),
    );
  }
}
