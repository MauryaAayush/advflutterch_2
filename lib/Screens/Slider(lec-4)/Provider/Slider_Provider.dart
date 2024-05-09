import 'package:flutter/cupertino.dart';

class SliderProvider extends ChangeNotifier
{
  double SliderValue = 0;

  void onChangeSlider(double value)
  {
      SliderValue = value;
      notifyListeners();
  }
}