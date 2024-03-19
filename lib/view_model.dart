import 'package:flutter/foundation.dart';

class CountViewModel extends ChangeNotifier {
  int count = 0;

  updateName()async{
    while(true){
      await Future.delayed(const Duration(seconds: 1));
      count++;
      notifyListeners();
    }

  }
}