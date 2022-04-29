import 'package:flutter/material.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class SkydivingInfo {
  int id;

  int initialFreeFallSeconds;
  int initialNumberOfJumps;

  int freeFallSeconds;
  int numberOfJumps;

  SkydivingInfo(
      {this.id = 0,
      this.freeFallSeconds = 0,
      this.numberOfJumps = 0,
      required this.initialFreeFallSeconds,
      required this.initialNumberOfJumps});

  @override
  String toString() {
    return 'SkydivingInfo{id: $id, freeFallSeconds: $initialFreeFallSeconds, numberOfJumps: $initialNumberOfJumps}';
  }
}
