import 'package:flutter/material.dart';

class ValueChange extends ChangeNotifier {
  String value = "Previours Value";

  void changevalue() {
    value = "Latest Word";
    notifyListeners();
  }
}
