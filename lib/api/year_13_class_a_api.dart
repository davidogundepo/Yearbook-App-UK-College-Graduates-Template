import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import '../model/Year13ClassA.dart';

import '../notifier/year_13_class_a_notifier.dart';

getYear13ClassA(Year13ClassANotifier year13ClassANotifier) async {

  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('Year13ClassAStudents')
      .orderBy('name')
      .get();

  List<Year13ClassA> _year13ClassAList = [];

  snapshot.docs.forEach((document) {
    Year13ClassA year13ClassA = Year13ClassA.fromMap(document.data());
    _year13ClassAList.add(year13ClassA);
  });

  year13ClassANotifier.year13ClassAList = _year13ClassAList;
}
