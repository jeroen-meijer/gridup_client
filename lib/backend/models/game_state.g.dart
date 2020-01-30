// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameState _$GameStateFromJson(Map json) {
  return GameState(
    name: json['name'] as String,
    board: (json['board'] as List)
        ?.map((e) => (e as List)
            ?.map((e) => e == null ? null : Tile.fromJson(e as Map))
            ?.toList())
        ?.toList(),
  );
}

Map<String, dynamic> _$GameStateToJson(GameState instance) => <String, dynamic>{
      'name': instance.name,
      'board': instance.board
          ?.map((e) => e?.map((e) => e?.toJson())?.toList())
          ?.toList(),
    };

Tile _$TileFromJson(Map json) {
  return Tile(
    elevation: const ElevationConverter().fromJson(json['elevation'] as int),
    color:
        json['color'] == null ? null : TileColor.fromJson(json['color'] as Map),
  );
}

Map<String, dynamic> _$TileToJson(Tile instance) => <String, dynamic>{
      'elevation': const ElevationConverter().toJson(instance.elevation),
      'color': instance.color?.toJson(),
    };
