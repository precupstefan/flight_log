import 'package:flutter/material.dart';

class Screen {


  String route;
  Widget Function(BuildContext) build_function;

  String text;
  IconData icon;
  bool isExcluded;

  Screen({
    required this.route,
    required this.build_function,
    this.text = "",
    this.icon = Icons.favorite,
    this.isExcluded = false,
  });
}
