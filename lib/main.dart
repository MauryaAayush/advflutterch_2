import 'package:advflutterch_2/Screens/Cupertino_Widget(lec-2)/Provider/System_Provider.dart';
import 'package:advflutterch_2/Screens/Date_Time_Picker(Lec-1)/Provider/Dialog_Provider_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Utils/Adaptive/Adaptives.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => DialogBoxProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => SystemProvider(),
    )
  ], child: const AdaptiveMaterialCupertino()));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/check',
//       routes: {
//         '/': (context) => const Android(),
//         '/IOS': (context) => const Ios_Main(),
//         '/check': (context) =>  const IOS_Screen(),
//       },
//     );
//   }
// }
