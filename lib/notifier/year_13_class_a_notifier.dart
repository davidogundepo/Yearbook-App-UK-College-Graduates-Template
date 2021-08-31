
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import '../model/Year13ClassA.dart';

class Year13ClassANotifier with ChangeNotifier {
  List<Year13ClassA> _year13ClassAList = [];
  Year13ClassA _currentYear13ClassA;

  UnmodifiableListView<Year13ClassA> get year13ClassAList => UnmodifiableListView(_year13ClassAList);

  Year13ClassA get currentYear13ClassA => _currentYear13ClassA;

  set year13ClassAList(List<Year13ClassA> year13ClassAList) {
    _year13ClassAList = year13ClassAList;
    notifyListeners();
  }

  set currentYear13ClassA(Year13ClassA year13ClassA) {
    _currentYear13ClassA = year13ClassA;
    notifyListeners();
  }

}