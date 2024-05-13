import 'package:flutter/cupertino.dart';

class SlidingProvider extends ChangeNotifier{
  bool isAutomatic = false;
  bool isTruetone = false;
  bool isRaiseToWake = false;

  double rangeslindervalue =0;

  Brightness brightness = Brightness.dark;

  void automatic(bool value)
  {
    isAutomatic = value;
    notifyListeners();
  }

  void truetone(bool value)
  {
    isTruetone = value;
    notifyListeners();
  }

  void raisetowake(bool value)
  {
    isRaiseToWake = value;
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