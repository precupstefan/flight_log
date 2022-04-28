import 'package:flight_log/screens/skydiving.dart';
import 'package:flutter/material.dart';

import '../navigation/navigate.dart';
import '../navigation/screen.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Navigate.notExcludedScreens.length,
      itemBuilder: (BuildContext context, int index) {
        Screen selectedScreen = Navigate.notExcludedScreens.elementAt(index);
        return ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, selectedScreen.route),
            child: Text(selectedScreen.text));
      },
    );
  }
}
