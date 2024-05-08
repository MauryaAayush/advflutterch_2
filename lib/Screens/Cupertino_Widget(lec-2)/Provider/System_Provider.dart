import 'package:flutter/cupertino.dart';

class SystemProvider extends ChangeNotifier {
  bool isIOS = false;

  void changeLibrary(bool value) {
    isIOS = value;
    notifyListeners();
  }
}