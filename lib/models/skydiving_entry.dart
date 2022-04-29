
import 'package:objectbox/objectbox.dart';

@Entity()
class SkydivingEntry{

  int id;
  int jumpNumber;
  DateTime date;
  String place;
  String country;
  String aircraft;
  String equipment;
  String jumpAltitude;
  String openingAltitude;
  int freeFallTime;
  String purpose;
  String quality;
  String observations;

  SkydivingEntry(
      this.id,
      this.jumpNumber,
      this.date,
      this.place,
      this.country,
      this.aircraft,
      this.equipment,
      this.jumpAltitude,
      this.openingAltitude,
      this.freeFallTime,
      this.purpose,
      this.quality,
      this.observations);
}