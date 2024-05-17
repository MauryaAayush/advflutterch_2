import 'package:flutter/material.dart';

class DisplayTypeProvider with ChangeNotifier {
  bool _isGrid = false;

  bool get isGrid => _isGrid;

  void toggleDisplayType() {
    _isGrid = !_isGrid;
    notifyListeners();
  }
}


// import 'dart:math';
//
// import 'package:flutter/material.dart';
//
// class SliverScreen extends StatelessWidget {
//   const SliverScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//
//
//
//         ],
//       ),
//     );
//   }
//
//
// }
