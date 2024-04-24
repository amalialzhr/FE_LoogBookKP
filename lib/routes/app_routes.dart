import 'package:flutter/material.dart';
import '../presentation/add_log_harian_screen/add_log_harian_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/detail_log_harian_screen/detail_log_harian_screen.dart';
import '../presentation/edit_log_harian_screen/edit_log_harian_screen.dart';
import '../presentation/logbookpage_screen/logbookpage_screen.dart';
import '../presentation/mainpage_screen/mainpage_screen.dart'; // ignore_for_file: must_be_immutable

class AppRoutes {
  static const String mainpageScreen = '/mainpage_screen';

  static const String logbookpageScreen = '/logbookpage_screen';

  static const String addLogHarianScreen = '/add_log_harian_screen';

  static const String editLogHarianScreen = '/edit_log_harian_screen';

  static const String detailLogHarianScreen = '/detail_log_harian_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    mainpageScreen: (context) => MainpageScreen(),
    logbookpageScreen: (context) => LogbookpageScreen(),
    addLogHarianScreen: (context) => AddLogHarianScreen(),
    editLogHarianScreen: (context) => EditLogHarianScreen(),
    detailLogHarianScreen: (context) => DetailLogHarianScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => MainpageScreen()
  };
}
