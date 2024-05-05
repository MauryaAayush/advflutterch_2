import 'package:flutter/material.dart';
import 'Android_Picker_Screen.dart';

class Android extends StatelessWidget {
  const Android({super.key});

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
      home: Picker_Date()
    );
  }
}
