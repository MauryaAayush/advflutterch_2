import 'package:flutter/cupertino.dart';

class SlidingProvider extends ChangeNotifier{
  bool isAuto = false;
  bool istone = false;
  bool isWake = false;

  double rangeslindervalue =0;

  Brightness brightness = Brightness.dark;

  void automatic(bool value)
  {
    isAuto = value;
    notifyListeners();
  }

  void truetone(bool value)
  {
    istone = value;
    notifyListeners();
  }

  void raisetowake(bool value)
  {
    isWake = value;
    notifyListeners();
  }

  void rangeSliderChangeValue(double value)
  {
    rangeslindervalue = value;
    notifyListeners();
  }

  void changeTheme(Brightness value)
  {
    brightness = value;
    notifyListeners();
  }

  Brightness get themebrigtness => brightness;
}