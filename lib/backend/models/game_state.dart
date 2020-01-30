import 'package:gridup_client/backend/models/elevation.dart';
import 'package:gridup_client/backend/models/tile_color.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'game_state.g.dart';

@JsonSerializable()
class GameState {
  GameState({
    @required this.name,
    @required this.board,
  }) : assert(
          board.length == 5 && board.every((tileList) => tileList.length == 5),
          'board must be a 5x5 matrix of Tile objects.',
        );

  final String name;
  final List<List<Tile>> board;

  static GameState fromJson(Map<String, dynamic> json) => _$GameStateFromJson(json);

  Map<String, dynamic> toJson() => _$GameStateToJson(this);
}

@JsonSerializable()
class Tile {
  const Tile({
    @required this.elevation,
    @required this.color,
  });

  @ElevationConverter()
  final Elevation elevation;
  final TileColor color;

  static Tile fromJson(Map<String, dynamic> json) => _$TileFromJson(json);

  Map<String, dynamic> toJson() => _$TileToJson(this);
}
