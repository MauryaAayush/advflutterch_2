import 'package:advflutterch_2/Screens/TabBar,%20Slider,%20SliderSegmentControl(lec-5)/Model/List_Of_Screen.dart';
import 'package:advflutterch_2/Screens/TabBar,%20Slider,%20SliderSegmentControl(lec-5)/Provider/Tac_Screen_Provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../Slider_Screen/Slider_Screen.dart';

class SlidingSegmentScreen extends StatelessWidget {
  const SlidingSegmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          trailing: GestureDetector(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(
                  builder: (context) => const SliderScreen(),
                ));
              },
              child: Icon(CupertinoIcons.right_chevron)),
          middle: const Text('Title'),
          largeTitle: Center(
            child: CupertinoSlidingSegmentedControl(
              backgroundColor: CupertinoColors.systemGrey2,
              groupValue: Provider.of<TabBarScreen>(context, listen: true)
                  .index
                  .toString(),
              children: const {
                '0': Text(
                  'Home',
                  style: TextStyle(fontSize: 15),
                ),
                '1': Text(
                  'Search',
                  style: TextStyle(fontSize: 15),
                ),
                '2': Text(
                  'Favorite',
                  style: TextStyle(fontSize: 15),
                ),
                '3': Text(
                  'Account',
                  style: TextStyle(fontSize: 15),
                ),
              },
              onValueChanged: (value) {
                Provider.of<TabBarScreen>(context, listen: false)
                    .ChangedIndex(value!);
              },
            ),
          ),
        ),
        SliverFillRemaining(
          child: Center(
            child: Text(Screen2[Provider.of<TabBarScreen>(context).index],style: TextStyle(
              fontSize: 30,

            ),),
          ),
        ),
      ],
    ));
  }
}
