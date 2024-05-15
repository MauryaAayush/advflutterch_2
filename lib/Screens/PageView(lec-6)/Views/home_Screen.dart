import 'package:advflutterch_2/Screens/TabBar,%20Slider,%20SliderSegmentControl(lec-5)/Provider/Tac_Screen_Provider.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: AnimatedBottomNavigationBar(
      icons: [
        Icons.home,
        Icons.search_rounded,
        Icons.add_box_outlined,
        Icons.favorite_border
      ],

      splashSpeedInMilliseconds: 2,
      inactiveColor: Colors.white,
      backgroundColor: Colors.grey,
      splashColor: Colors.black,
      activeIndex: Provider.of<TabBarScreen>(context, listen: true).index,
      onTap: (value) {
        Provider.of<TabBarScreen>(context, listen: false)
            .ChangedIndex(value.toString());
      },
      //other params
    ));
  }
}
