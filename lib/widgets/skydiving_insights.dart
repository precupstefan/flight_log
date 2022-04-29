import 'package:flight_log/models/skydiving_info.dart';
import 'package:flutter/cupertino.dart';

class SkydivingInsights extends StatelessWidget {
  const SkydivingInsights({Key? key, this.skydivingInfo}) : super(key: key);

  final SkydivingInfo? skydivingInfo;

  @override
  Widget build(BuildContext context) {
    return (skydivingInfo == null)
        ? const Center(child: Text("No skydiving info provided"))
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Total number of jumps:"),
                Text(skydivingInfo!.numberOfJumps.toString()),
                const Text("Total number of free fall seconds:"),
                Text(skydivingInfo!.freeFallSeconds.toString())
              ],
            ),
          );
  }
}
