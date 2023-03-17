import 'package:flutter/widgets.dart';

class HomeProvider extends ChangeNotifier {
  int i = 0;
  int _currentStep = 0;

  void oncontinue() {
    if(i<2)
      {
        i++;
      }
    notifyListeners();
  }
  void oncancle() {
    if(i>0)
    {
      i--;
    }
    notifyListeners();
  }
  void change(int value)
  {
    i=value;
    notifyListeners();
  }
}
