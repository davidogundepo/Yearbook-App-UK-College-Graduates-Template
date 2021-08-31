import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/Year13ClassC.dart';
import '../notifier/year_13_class_c_notifier.dart';

getYear13ClassC(Year13ClassCNotifier year13ClassCNotifier) async {
  QuerySnapshot snapshot = await FirebaseFirestore.instance
      .collection('Year13ClassCStudents')
      .orderBy('name')
      .get();

  List<Year13ClassC> _year13ClassCList = [];

  snapshot.docs.forEach((document) {
    Year13ClassC year13ClassC = Year13ClassC.fromMap(document.data());
    _year13ClassCList.add(year13ClassC);
  });

  year13ClassCNotifier.year13ClassCList = _year13ClassCList;
}
