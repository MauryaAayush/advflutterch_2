import 'package:flutter/material.dart';

import 'Screens/Date_Time_Picker(Lec-1)/Views/Cupertino_UI/IOS/IOS_Main.dart';
import 'Screens/Date_Time_Picker(Lec-1)/Views/Material_UI/Android/Android_Main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      initialRoute: '/IOS',
      routes: {
        '/' : (context) => const Android(),
        '/IOS' : (context) =>  Ios_Main(),
      },


    );
  }
}

