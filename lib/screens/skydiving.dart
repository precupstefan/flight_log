import 'dart:developer';

import 'package:flight_log/main.dart';
import 'package:flight_log/models/skydiving_entry.dart';
import 'package:flight_log/models/skydiving_info.dart';
import 'package:flight_log/widgets/general_activity_display.dart';
import 'package:flight_log/widgets/skydiving_insights.dart';
import 'package:flutter/material.dart';

import '../objectbox.g.dart';

class Skydive extends StatefulWidget {
  const Skydive({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SkydiveState();
}

class _SkydiveState extends State<Skydive> {
  late bool hasSkydivingInfo;
  SkydivingInfo? skydivingInfo;
  late Box<SkydivingInfo> skydiveInfoBox;
  late Box<SkydivingEntry> skydivingEntryBox;

  void _onFloatingButtonTap() {
    log("Am dat click pe plus");
  }

  Future<void> _editSkydivingInfoInputDialog() async {
    skydivingInfo = skydivingInfo ??
        SkydivingInfo(initialFreeFallSeconds: 0, initialNumberOfJumps: 0);

    final _formKey = GlobalKey<FormState>();
    onSave() {
      _formKey.currentState!.save();

      List<SkydivingEntry> skydivingEntries = skydivingEntryBox.getAll();

      var freeFallFromEntries = skydivingEntries.fold(
          0, (int initialValue, entry) => initialValue + entry.freeFallTime);

      var jumpsFromEntries = skydivingEntries.length;

      skydivingInfo!.freeFallSeconds =
          skydivingInfo!.initialFreeFallSeconds + freeFallFromEntries;

      skydivingInfo!.numberOfJumps =
          skydivingInfo!.initialNumberOfJumps + jumpsFromEntries;

      skydiveInfoBox.put(skydivingInfo!);
      Navigator.pop(context);
      setState(() {});
      log(skydivingInfo.toString());
    }

    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Edit previous XP"),
            content: Form(
                key: _formKey,
                child: Wrap(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          filled: true,
                          labelText: "Time in free fall",
                          suffix: Text("seconds")),
                      keyboardType: TextInputType.number,
                      initialValue:
                          skydivingInfo!.initialFreeFallSeconds.toString(),
                      onSaved: (value) => skydivingInfo!
                          .initialFreeFallSeconds = int.parse(value ?? "0"),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        filled: true,
                        labelText: "Number of jumps",
                      ),
                      keyboardType: TextInputType.number,
                      initialValue:
                          skydivingInfo!.initialNumberOfJumps.toString(),
                      onSaved: (value) => skydivingInfo!.initialNumberOfJumps =
                          int.parse(value ?? "0"),
                    )
                  ],
                )),
            actions: [TextButton(onPressed: onSave, child: const Text("SAVE"))],
          );
        });
  }

  @override
  void initState() {
    super.initState();
    skydiveInfoBox = objectStore.box<SkydivingInfo>();
    skydivingEntryBox = objectStore.box<SkydivingEntry>();
    hasSkydivingInfo = !skydiveInfoBox.isEmpty();

    if (hasSkydivingInfo) {
      skydivingInfo = skydiveInfoBox.get(1)!;
    } else {
      WidgetsBinding.instance?.addPostFrameCallback((_) async {
        _editSkydivingInfoInputDialog();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GeneralActivityDisplay(
      title: "Skydiving Activity",
      appBarActions: [IconButton(onPressed: _onFloatingButtonTap, icon: const Icon(Icons.edit))],
      pages: [
        SkydivingInsights(
          skydivingInfo: skydivingInfo,
        ),
        Text("screen 2")
      ],
      hasFloatingButton: true,
      onFloatingButtonPressed: _onFloatingButtonTap,
      bottomNavigationBarItems: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.insights),
          label: 'Insights',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.import_contacts),
          label: 'Jumps',
        ),
      ],
    );
  }
}
