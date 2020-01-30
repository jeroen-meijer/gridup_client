import 'package:json_annotation/json_annotation.dart';

enum Elevation {
  low,
  middle,
  high,
}

extension ToInt on Elevation {
  int get intValue => _elevationValues[this];
}

const _elevationValues = <Elevation, int>{
  Elevation.low: -1,
  Elevation.middle: 0,
  Elevation.high: 1,
};

Elevation _elevationFromInt(int value) {
  assert(_elevationValues.values.contains(value), 'Provided elevation value should be either -1, 0 or 1.');

  return _elevationValues.entries.firstWhere((entry) => entry.value == value).key;
}

class ElevationConverter implements JsonConverter<Elevation, int> {
  const ElevationConverter();

  @override
  Elevation fromJson(int value) => _elevationFromInt(value);

  @override
  int toJson(Elevation value) => value.intValue;
}
