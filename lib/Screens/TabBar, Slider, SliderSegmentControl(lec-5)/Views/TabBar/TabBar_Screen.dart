import 'package:advflutterch_2/Screens/TabBar,%20Slider,%20SliderSegmentControl(lec-5)/Model/List_Of_Screen.dart';
import 'package:flutter/cupertino.dart';

import '../Sliding_Segment_Screen/Sliding_Segment_Screen.dart';

class TabBar_Screen extends StatelessWidget {
  const TabBar_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Tab Bar'),
          trailing: GestureDetector(
              onTap: () {
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => const SlidingSegmentScreen(),));
              },
              child: Icon(CupertinoIcons.right_chevron)),
        ),

        child: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.add_circled),label: "Add pages"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),label: "Like"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_circle),label: "Account"),

          ]),
          tabBuilder: (context, index) {
            return Center(child: Text(Screen[index],style: TextStyle(
              fontSize: 30,
              color: CupertinoColors.activeBlue
            ),));
          },
        ));
  }
}
