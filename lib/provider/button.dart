import 'package:flutter/cupertino.dart';

class ButtonProvider extends ChangeNotifier {
  bool _isHover = false;

  bool get isHover => _isHover;

  void setHover(bool val) {
    _isHover = val;
    notifyListeners();
  }
}
