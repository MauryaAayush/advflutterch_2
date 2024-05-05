import 'package:flutter/material.dart';

import 'IOS_Picker_Screen.dart';

class Ios_Main extends StatelessWidget {
  const Ios_Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          datePickerTheme: DatePickerThemeData(
              backgroundColor: Colors.teal
          ),
          colorScheme: ColorScheme.light(
              primary: Colors.teal,
              secondary: Color(0xff135D66).withOpacity(0.6)
          )
      ),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.dark(
              primary: Colors.teal,
              secondary:  Color(0xff135D66).withOpacity(0.6)
          )
      ),
      color: Theme.of(context).colorScheme.primary,
      home: Ios_Pickers(),
    );
  }
}
