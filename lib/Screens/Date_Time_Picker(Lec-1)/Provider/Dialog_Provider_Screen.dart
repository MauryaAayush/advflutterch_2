import 'package:flutter/material.dart';

class DialogBoxProvider extends ChangeNotifier {
  String dialogSelected = '';
  String get selectedRingtone => dialogSelected;

  void setDialog(String ringtone) {
    dialogSelected = ringtone;
    notifyListeners();
  }
}
