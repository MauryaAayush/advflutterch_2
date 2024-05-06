import 'package:advflutterch_2/Screens/Date_Time_Picker(Lec-1)/Provider/Dialog_Provider_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/Cupertino_Widget(lec-2)/Views/IOS/IOS_Screen.dart';
import 'Screens/Date_Time_Picker(Lec-1)/Views/Cupertino_UI/IOS/IOS_Main.dart';
import 'Screens/Date_Time_Picker(Lec-1)/Views/Material_UI/Android/Android_Main.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => DialogBoxProvider(),
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
      initialRoute: '/check',
      routes: {
        '/': (context) => const Android(),
        '/IOS': (context) => const Ios_Main(),
        '/check': (context) =>  const IOS_Screen(),
      },
    );
  }
}
