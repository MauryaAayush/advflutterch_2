
import 'package:advflutterch_2/Screens/Cupertino_Widget(lec-2)/Provider/System_Provider.dart';
import 'package:advflutterch_2/Screens/Cupertino_Widget(lec-2)/Views/Android/Android_Screen.dart';
import 'package:advflutterch_2/Screens/Cupertino_Widget(lec-2)/Views/IOS/IOS_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdaptiveMaterialCupertino extends StatelessWidget {
  const AdaptiveMaterialCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    if (Provider.of<SystemProvider>(context, listen: true).isIOS) {
      return CupertinoApp(
          debugShowCheckedModeBanner: false, home: IOS_Screen());
    } else {
      return MaterialApp(
          debugShowCheckedModeBanner: false, home: Android_Screen());
    }
  }
}