
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/Year13ClassB.dart';

class Year13ClassBNotifier with ChangeNotifier {
  List<Year13ClassB> _year13ClassBList = [];
  Year13ClassB _currentYear13ClassB;

  UnmodifiableListView<Year13ClassB> get year13ClassBList => UnmodifiableListView(_year13ClassBList);

  Year13ClassB get currentYear13ClassB => _currentYear13ClassB;

  set year13ClassBList(List<Year13ClassB> year13ClassBList) {
    _year13ClassBList = year13ClassBList;
    notifyListeners();
  }

  set currentYear13ClassB(Year13ClassB year13ClassB) {
    _currentYear13ClassB = year13ClassB;
    notifyListeners();
  }

}