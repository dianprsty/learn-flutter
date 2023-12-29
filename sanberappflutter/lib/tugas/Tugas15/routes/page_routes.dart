import 'package:get/get.dart';
import 'package:sanberappflutter/tugas/Tugas15/pages/page_1.dart';
import 'package:sanberappflutter/tugas/Tugas15/pages/page_2.dart';
import 'package:sanberappflutter/tugas/Tugas15/pages/page_3.dart';
import 'package:sanberappflutter/tugas/Tugas15/routes/route_name.dart';

class pageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.page_1,
      page: () => PageOne(),
    ),
    GetPage(
      name: RouteName.page_2,
      page: () => PageTwo(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: () => PageThree(),
    ),
  ];
}
