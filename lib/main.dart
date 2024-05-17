import 'package:advflutterch_2/Screens/Cupertino_Widget(lec-2)/Provider/System_Provider.dart';
import 'package:advflutterch_2/Screens/Date_Time_Picker(Lec-1)/Provider/Dialog_Provider_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/ActionSheet & ContextMenu(lect-7)/Views/CupertinoActionSheet_Screen.dart';

import 'Screens/Cupertino_Sliver(lect-3)/Views/Custom_scroll.dart';
import 'Screens/Cupertino_Widget(lec-2)/Views/IOS/IOS_Screen.dart';
import 'Screens/DatePicker(lec-8)/Views/Cupertino_Datepicker_Screen.dart';
import 'Screens/DatePicker(lec-8)/Views/Material_DatePicker_Screen.dart';
import 'Screens/Date_Time_Picker(Lec-1)/Views/Cupertino_UI/IOS/IOS_Main.dart';
import 'Screens/Date_Time_Picker(Lec-1)/Views/Material_UI/Android/Android_Main.dart';
import 'Screens/PageView(lec-6)/Provider/Page_Provider_Screen.dart';
import 'Screens/PageView(lec-6)/Views/PageView.dart';
import 'Screens/Slider(lec-4)/Provider/Slider_Provider.dart';
import 'Screens/Slider(lec-4)/slider.dart';
import 'Screens/TabBar, Slider, SliderSegmentControl(lec-5)/Provider/Slider_Screen_Provider.dart';
import 'Screens/TabBar, Slider, SliderSegmentControl(lec-5)/Provider/Tac_Screen_Provider.dart';
import 'Screens/TabBar, Slider, SliderSegmentControl(lec-5)/Views/TabBar/TabBar_Screen.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => DialogBoxProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => SystemProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => SliderProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => TabBarScreen(),
    ),
    ChangeNotifierProvider(
      create: (context) => SlidingScreenProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => IntroProvider(),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // home: AdaptiveMaterialCupertino(),
      initialRoute: '/lec8',
      routes: {
        '/': (context) => const Android(),
        '/IOS': (context) => const Ios_Main(),
        '/check': (context) => const IOS_Screen(),
        '/lec3': (context) => const Custom_Scroll(),
        '/lec4': (context) => const Slider_Screen(),
        '/lec5': (context) => const TabBar_Screen(),
        '/lec6': (context) => const PageViewScreen(),
        '/lec7': (context) => const ActionsheetScreen(),
        '/lec8': (context) => const Date_Picker_Screen(),
      },
    );
  }
}
