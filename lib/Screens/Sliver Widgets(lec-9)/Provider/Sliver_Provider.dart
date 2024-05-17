import 'package:flutter/material.dart';

class SliverScreenState extends ChangeNotifier {
  bool isList = true;

  void toggleView() {
    isList = !isList;
    notifyListeners();
  }
}
