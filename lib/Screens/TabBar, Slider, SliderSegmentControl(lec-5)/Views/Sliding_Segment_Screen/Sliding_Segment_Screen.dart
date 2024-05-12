import 'package:flutter/cupertino.dart';

class SlidingSegmentScreen extends StatelessWidget {
  const SlidingSegmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            middle: Text('Hello'),
            largeTitle: Center(child: Text('Hello')),

          ),
          SliverFillRemaining(
            child: Text('Radhey Radhey'),
          ),
        ],
      )
    );
  }
}

