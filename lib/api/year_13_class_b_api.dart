import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/Year13ClassB.dart';
import '../notifier/year_13_class_b_notifier.dart';

getYear13ClassB(Year13ClassBNotifier year13ClassBNotifier) async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('Year13ClassBStudents')
      .orderBy('name')
      .get();

  List<Year13ClassB> _year13ClassBList = [];

  snapshot.docs.forEach((document) {
    Year13ClassB year13ClassB = Year13ClassB.fromMap(document.data());
    _year13ClassBList.add(year13ClassB);
  });

  year13ClassBNotifier.year13ClassBList = _year13ClassBList;
}
