import 'package:advflutterch_2/Screens/PageView(lec-6)/Views/home_Screen.dart';
import 'package:flutter/material.dart';
import 'intro1.dart';
import 'intro2.dart';
import 'intro3.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Intro1(),
          Intro2(),
          Intro3(),
          Home(),
        ],
      )
    );
  }
}
