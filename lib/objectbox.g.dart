// GENERATED CODE - DO NOT MODIFY BY HAND
// This code was generated by ObjectBox. To update it run the generator again:
// With a Flutter package, run `flutter pub run build_runner build`.
// With a Dart package, run `dart run build_runner build`.
// See also https://docs.objectbox.io/getting-started#generate-objectbox-code

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:flat_buffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';
import 'package:objectbox_flutter_libs/objectbox_flutter_libs.dart';

import 'models/skydiving_entry.dart';
import 'models/skydiving_info.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 1946953402188506519),
      name: 'SkydivingEntry',
      lastPropertyId: const IdUid(13, 1439706300760398508),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 2940292053545486404),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 6315225777063015367),
            name: 'jumpNumber',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 269695389670021944),
            name: 'date',
            type: 10,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1637071962306931131),
            name: 'place',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 1917506139014974152),
            name: 'country',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(6, 3065983263839793556),
            name: 'aircraft',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(7, 2702428975676635331),
            name: 'equipment',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(8, 569375830024056103),
            name: 'jumpAltitude',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(9, 5335647706539915690),
            name: 'openingAltitude',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(10, 2559748134641788678),
            name: 'freeFallTime',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 8830114934260823),
            name: 'purpose',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 5116149261708979290),
            name: 'quality',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 1439706300760398508),
            name: 'observations',
            type: 9,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 966955434248277581),
      name: 'SkydivingInfo',
      lastPropertyId: const IdUid(5, 5740801623786571798),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 8682954847998714489),
            name: 'id',
            type: 6,
            flags: 1),
        ModelProperty(
            id: const IdUid(2, 3783867600577717610),
            name: 'freeFallSeconds',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 2644301177658141789),
            name: 'numberOfJumps',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 1147298973819738206),
            name: 'initialFreeFallSeconds',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(5, 5740801623786571798),
            name: 'initialNumberOfJumps',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// Open an ObjectBox store with the model declared in this file.
Future<Store> openStore(
        {String? directory,
        int? maxDBSizeInKB,
        int? fileMode,
        int? maxReaders,
        bool queriesCaseSensitiveDefault = true,
        String? macosApplicationGroup}) async =>
    Store(getObjectBoxModel(),
        directory: directory ?? (await defaultStoreDirectory()).path,
        maxDBSizeInKB: maxDBSizeInKB,
        fileMode: fileMode,
        maxReaders: maxReaders,
        queriesCaseSensitiveDefault: queriesCaseSensitiveDefault,
        macosApplicationGroup: macosApplicationGroup);

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(2, 966955434248277581),
      lastIndexId: const IdUid(0, 0),
      lastRelationId: const IdUid(0, 0),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [],
      retiredPropertyUids: const [],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    SkydivingEntry: EntityDefinition<SkydivingEntry>(
        model: _entities[0],
        toOneRelations: (SkydivingEntry object) => [],
        toManyRelations: (SkydivingEntry object) => {},
        getId: (SkydivingEntry object) => object.id,
        setId: (SkydivingEntry object, int id) {
          object.id = id;
        },
        objectToFB: (SkydivingEntry object, fb.Builder fbb) {
          final placeOffset = fbb.writeString(object.place);
          final countryOffset = fbb.writeString(object.country);
          final aircraftOffset = fbb.writeString(object.aircraft);
          final equipmentOffset = fbb.writeString(object.equipment);
          final jumpAltitudeOffset = fbb.writeString(object.jumpAltitude);
          final openingAltitudeOffset = fbb.writeString(object.openingAltitude);
          final purposeOffset = fbb.writeString(object.purpose);
          final qualityOffset = fbb.writeString(object.quality);
          final observationsOffset = fbb.writeString(object.observations);
          fbb.startTable(14);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.jumpNumber);
          fbb.addInt64(2, object.date.millisecondsSinceEpoch);
          fbb.addOffset(3, placeOffset);
          fbb.addOffset(4, countryOffset);
          fbb.addOffset(5, aircraftOffset);
          fbb.addOffset(6, equipmentOffset);
          fbb.addOffset(7, jumpAltitudeOffset);
          fbb.addOffset(8, openingAltitudeOffset);
          fbb.addInt64(9, object.freeFallTime);
          fbb.addOffset(10, purposeOffset);
          fbb.addOffset(11, qualityOffset);
          fbb.addOffset(12, observationsOffset);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = SkydivingEntry(
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0),
              DateTime.fromMillisecondsSinceEpoch(
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0)),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 10, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 12, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 14, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 16, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 18, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 20, ''),
              const fb.Int64Reader().vTableGet(buffer, rootOffset, 22, 0),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 24, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 26, ''),
              const fb.StringReader(asciiOptimization: true)
                  .vTableGet(buffer, rootOffset, 28, ''));

          return object;
        }),
    SkydivingInfo: EntityDefinition<SkydivingInfo>(
        model: _entities[1],
        toOneRelations: (SkydivingInfo object) => [],
        toManyRelations: (SkydivingInfo object) => {},
        getId: (SkydivingInfo object) => object.id,
        setId: (SkydivingInfo object, int id) {
          object.id = id;
        },
        objectToFB: (SkydivingInfo object, fb.Builder fbb) {
          fbb.startTable(6);
          fbb.addInt64(0, object.id);
          fbb.addInt64(1, object.freeFallSeconds);
          fbb.addInt64(2, object.numberOfJumps);
          fbb.addInt64(3, object.initialFreeFallSeconds);
          fbb.addInt64(4, object.initialNumberOfJumps);
          fbb.finish(fbb.endTable());
          return object.id;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = SkydivingInfo(
              id: const fb.Int64Reader().vTableGet(buffer, rootOffset, 4, 0),
              freeFallSeconds:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 6, 0),
              numberOfJumps:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 8, 0),
              initialFreeFallSeconds:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0),
              initialNumberOfJumps:
                  const fb.Int64Reader().vTableGet(buffer, rootOffset, 12, 0));

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [SkydivingEntry] entity fields to define ObjectBox queries.
class SkydivingEntry_ {
  /// see [SkydivingEntry.id]
  static final id =
      QueryIntegerProperty<SkydivingEntry>(_entities[0].properties[0]);

  /// see [SkydivingEntry.jumpNumber]
  static final jumpNumber =
      QueryIntegerProperty<SkydivingEntry>(_entities[0].properties[1]);

  /// see [SkydivingEntry.date]
  static final date =
      QueryIntegerProperty<SkydivingEntry>(_entities[0].properties[2]);

  /// see [SkydivingEntry.place]
  static final place =
      QueryStringProperty<SkydivingEntry>(_entities[0].properties[3]);

  /// see [SkydivingEntry.country]
  static final country =
      QueryStringProperty<SkydivingEntry>(_entities[0].properties[4]);

  /// see [SkydivingEntry.aircraft]
  static final aircraft =
      QueryStringProperty<SkydivingEntry>(_entities[0].properties[5]);

  /// see [SkydivingEntry.equipment]
  static final equipment =
      QueryStringProperty<SkydivingEntry>(_entities[0].properties[6]);

  /// see [SkydivingEntry.jumpAltitude]
  static final jumpAltitude =
      QueryStringProperty<SkydivingEntry>(_entities[0].properties[7]);

  /// see [SkydivingEntry.openingAltitude]
  static final openingAltitude =
      QueryStringProperty<SkydivingEntry>(_entities[0].properties[8]);

  /// see [SkydivingEntry.freeFallTime]
  static final freeFallTime =
      QueryIntegerProperty<SkydivingEntry>(_entities[0].properties[9]);

  /// see [SkydivingEntry.purpose]
  static final purpose =
      QueryStringProperty<SkydivingEntry>(_entities[0].properties[10]);

  /// see [SkydivingEntry.quality]
  static final quality =
      QueryStringProperty<SkydivingEntry>(_entities[0].properties[11]);

  /// see [SkydivingEntry.observations]
  static final observations =
      QueryStringProperty<SkydivingEntry>(_entities[0].properties[12]);
}

/// [SkydivingInfo] entity fields to define ObjectBox queries.
class SkydivingInfo_ {
  /// see [SkydivingInfo.id]
  static final id =
      QueryIntegerProperty<SkydivingInfo>(_entities[1].properties[0]);

  /// see [SkydivingInfo.freeFallSeconds]
  static final freeFallSeconds =
      QueryIntegerProperty<SkydivingInfo>(_entities[1].properties[1]);

  /// see [SkydivingInfo.numberOfJumps]
  static final numberOfJumps =
      QueryIntegerProperty<SkydivingInfo>(_entities[1].properties[2]);

  /// see [SkydivingInfo.initialFreeFallSeconds]
  static final initialFreeFallSeconds =
      QueryIntegerProperty<SkydivingInfo>(_entities[1].properties[3]);

  /// see [SkydivingInfo.initialNumberOfJumps]
  static final initialNumberOfJumps =
      QueryIntegerProperty<SkydivingInfo>(_entities[1].properties[4]);
}
