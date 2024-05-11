import 'package:flutter/cupertino.dart';


class TabBarScreen extends ChangeNotifier
{
  int index = 0;

  void ChangedIndex(String index)
  {

    notifyListeners();
  }
}