
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/Year13ClassC.dart';

class Year13ClassCNotifier with ChangeNotifier {
  List<Year13ClassC> _year13ClassCList = [];
  Year13ClassC _currentYear13ClassC;

  UnmodifiableListView<Year13ClassC> get year13ClassCList => UnmodifiableListView(_year13ClassCList);

  Year13ClassC get currentYear13ClassC => _currentYear13ClassC;

  set year13ClassCList(List<Year13ClassC> year13ClassCList) {
    _year13ClassCList = year13ClassCList;
    notifyListeners();
  }

  set currentYear13ClassC(Year13ClassC year13ClassC) {
    _currentYear13ClassC = year13ClassC;
    notifyListeners();
  }

}