import 'package:flutter/material.dart';

import 'Screens/Date_Time_Picker(Lec-1)/Views/Material_UI/Date_Picker/Date_Picker_Theme_Screen.dart';

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

      initialRoute: '/',
      routes: {
        '/' : (context) => const Date_Picker(),
      },


    );
  }
}

