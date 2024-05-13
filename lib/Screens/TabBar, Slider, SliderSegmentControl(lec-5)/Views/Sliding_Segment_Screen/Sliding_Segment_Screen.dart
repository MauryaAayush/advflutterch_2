import 'package:flutter/cupertino.dart';

class SlidingSegmentScreen extends StatelessWidget {
  const SlidingSegmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          middle: const Text('Title'),
          largeTitle: Center(
            child: CupertinoSlidingSegmentedControl(

                children: const {
                '0' : Text('Home',style: TextStyle(fontSize: 15),),
                '1' : Text('Search',style: TextStyle(fontSize: 15),),
                '2' : Text('Favorite',style: TextStyle(fontSize: 15),),
                '3' : Text('Account',style: TextStyle(fontSize: 15),),
                }, onValueChanged: (value) {

                },),
          ),
        ),
        SliverFillRemaining(
          child: Text(
            "Radhey Radhey"
          ),
        ),
      ],
    ));
  }
}
