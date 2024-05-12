import 'package:flutter/cupertino.dart';

class SlidingSegmentScreen extends StatelessWidget {
  const SlidingSegmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('hello'),
          ),
          SliverFillRemaining(
            child: Text('hello'),
          ),
        ],
      )
    );
  }
}

