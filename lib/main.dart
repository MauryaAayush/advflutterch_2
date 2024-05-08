import 'package:advflutterch_2/Screens/Cupertino_Widget(lec-2)/Provider/System_Provider.dart';
import 'package:advflutterch_2/Screens/Date_Time_Picker(Lec-1)/Provider/Dialog_Provider_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screens/Cupertino_Sliver(lect-3)/Views/Custom_scroll.dart';
import 'Screens/Cupertino_Widget(lec-2)/Views/IOS/IOS_Screen.dart';
import 'Screens/Date_Time_Picker(Lec-1)/Views/Cupertino_UI/IOS/IOS_Main.dart';
import 'Screens/Date_Time_Picker(Lec-1)/Views/Material_UI/Android/Android_Main.dart';
import 'Utils/Adaptive/Adaptives.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => DialogBoxProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => SystemProvider(),
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
      initialRoute: '/lec4',
      routes: {
        '/': (context) => const Android(),
        '/IOS': (context) => const Ios_Main(),
        '/check': (context) =>  const IOS_Screen(),
        '/lec4': (context) =>  const Custom_Scroll(),
      },
    );
  }
}
