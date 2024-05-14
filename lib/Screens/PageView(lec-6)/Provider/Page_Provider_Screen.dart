import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroProvider extends ChangeNotifier {
  bool ischecked = false;

  // set
  Future<void> setdata() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('ischeck', true);

    ischecked = true;
    notifyListeners();
  }

  // get
  Future<void> GetResponse() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    ischecked = preferences.getBool('ischeck') ?? false;

    notifyListeners();
  }

  IntroProvider() {
    GetResponse();
  }




}
