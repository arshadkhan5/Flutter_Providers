import 'package:flutter/material.dart';


//Create a provider
class CountProvider with ChangeNotifier {
  int _count = 0;

  // Its getter property we are getting _count and assign to another variable that variable will access in the screen where we need it here we use count
  int get count => _count;

  // method for _count increment
  void setCounter() {
    _count++;
    notifyListeners();

  }
}
