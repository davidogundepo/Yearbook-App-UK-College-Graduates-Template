
import 'package:bloc/bloc.dart';
import '../thrown_pages/management_thrown_page.dart';
import '../thrown_pages/teachers_thrown_page.dart';
import '../thrown_pages/year_13a_thrown_page.dart';
import '../thrown_pages/year_13b_thrown_page.dart';
import '../thrown_pages/year_13c_thrown_page.dart';
import '../thrown_pages/prefects_thrown_page.dart';

enum NavigationEvents {
  MyYear13ClassAPageClickedEvent,
  MyYear13ClassBPageClickedEvent,
  MyYear13ClassCPageClickedEvent,
  MyGraduatesClassTeachersPageClickedEvent,
  MyManagementBodyPageClickedEvent,
  MyClassPrefectsPageClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {

  NavigationBloc() : super(MyYear13ClassAPage());

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents events) async* {
    switch (events) {
      case NavigationEvents.MyYear13ClassAPageClickedEvent:
        yield MyYear13ClassAPage();
        break;
      case NavigationEvents.MyYear13ClassBPageClickedEvent:
        yield MyYear13ClassBPage();
        break;
      case NavigationEvents.MyYear13ClassCPageClickedEvent:
        yield MyYear13ClassCPage();
        break;
      case NavigationEvents.MyGraduatesClassTeachersPageClickedEvent:
        yield MyGraduatesClassTeachersPage();
        break;
      case NavigationEvents.MyManagementBodyPageClickedEvent:
        yield MyManagementBodyPage();
        break;
      case NavigationEvents.MyClassPrefectsPageClickedEvent:
        yield MyClassPrefectsPage();
        break;
    }
  }


}
