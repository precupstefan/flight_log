import 'package:flight_log/navigation/screen.dart';
import 'package:flight_log/screens/home.dart';
import 'package:flight_log/screens/skydiving.dart';
import 'package:flutter/material.dart';

class Navigate {
  static List<Screen> screens = [
    Screen(
        route: "/", isExcluded: true, build_function: (context) => HomePage()),
    Screen(
        route: "/skydiving",
        text: "Skydiving",
        build_function: (context) => Skydive())
  ];

  static List<Screen> notExcludedScreens =
      screens.where((element) => !element.isExcluded).toList();

  static Map<String, Widget Function(BuildContext)> routes = {
    for (var element in screens) element.route: element.build_function
  };
}
