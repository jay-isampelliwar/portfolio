import 'package:flutter/cupertino.dart';

class Container1Provider extends ChangeNotifier {
  final bool _fadeAnimation = false;
  double _opacity = 0;

  bool get fadeAnimation => _fadeAnimation;
  double get opacity => _opacity;

  void setOpacity(double val) {
    _opacity = val;
    notifyListeners();
  }
}
