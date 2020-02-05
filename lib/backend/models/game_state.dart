import 'package:flutter/rendering.dart';
import 'package:gridup_client/backend/models/elevation.dart';
import 'package:gridup_client/backend/models/player.dart';
import 'package:gridup_client/backend/models/tile_color.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'game_state.g.dart';

List<List<Tile>> get defaultTiles => List<List<Tile>>.unmodifiable(
      <List<Tile>>[]
          // Default tile color
          .withAllTiles(Tile.black)
          // Center tile
          .withTile(2, 2, (tile) => Tile.white)
          // White outer square
          .withRow(0, Tile.white)
          .withRow(4, Tile.white)
          .withColumn(0, Tile.white)
          .withColumn(4, Tile.white)
          // Top
          .withTile(0, 1, (tile) => Tile.blue)
          .withTile(0, 3, (tile) => Tile.blue)
          // Right
          .withTile(1, 4, (tile) => Tile.purple)
          .withTile(3, 4, (tile) => Tile.purple)
          // Bottom
          .withTile(4, 1, (tile) => Tile.yellow)
          .withTile(4, 3, (tile) => Tile.yellow)
          // Left
          .withTile(1, 0, (tile) => Tile.green)
          .withTile(3, 0, (tile) => Tile.green),
    );

class Pos {
  const Pos(this.x, this.y);

  final int x;
  final int y;
}

const p1pos1 = Pos(4, 4);
const p1pos2 = Pos(3, 0);

const p2pos1 = Pos(3, 4);
const p2pos2 = Pos(4, 2);
const p2pos3 = Pos(0, 4);

final gameState1 = GameState(
  name: 'gameState',
  board: defaultTiles.withTile(
    p1pos1.x,
    p1pos1.y,
    (tile) => tile.copyWith(
      color: TileColor.fromMaterialColor(Player.one.color),
    ),
  ),
);

final gameState2 = GameState(
  name: 'gameState',
  board: defaultTiles.withTile(
    p1pos2.x,
    p1pos2.y,
    (tile) => tile.copyWith(
      elevation: Elevation.high,
      color: TileColor.fromMaterialColor(Player.one.color),
    ),
  ),
);

final gameState3 = gameState2.transform(
  board: (board) => board.withTile(
    p1pos2.x,
    p1pos2.y,
    (tile) => tile.copyWith(
      elevation: Elevation.middle,
    ),
  ),
);

final gameState4 = gameState3.transform(
  board: (board) => board.withTile(
    4,
    1,
    (tile) => tile.copyWith(
      elevation: Elevation.high,
    ),
  ),
);

final gameState5 = gameState4.transform(
  board: (board) => board
      .withTile(
        p1pos2.x,
        p1pos2.y,
        (tile) => tile.copyWith(
          color: Tile.green.color,
        ),
      )
      .withTile(
        p2pos1.x,
        p2pos1.y,
        (tile) => tile.copyWith(
          color: TileColor.fromMaterialColor(Player.two.color),
        ),
      ),
);

final gameState6 = gameState5.transform(
  board: (board) => board
      .withTile(
        p2pos1.x,
        p2pos1.y,
        (tile) => tile.copyWith(
          color: Tile.purple.color,
        ),
      )
      .withTile(
        p2pos2.x,
        p2pos2.y,
        (tile) => tile.copyWith(
          color: TileColor.fromMaterialColor(Player.two.color),
        ),
      ),
);

final gameState7 = gameState6.transform(
  board: (board) => board
      .withTile(
        p2pos2.x,
        p2pos2.y,
        (tile) => tile.copyWith(
          color: Tile.white.color,
        ),
      )
      .withTile(
        p2pos3.x,
        p2pos3.y,
        (tile) => Tile(
          elevation: Elevation.high,
          color: TileColor.fromMaterialColor(Player.two.color),
        ),
      ),
);

typedef Transform<T> = T Function(T value);

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

  GameState transform({Transform<String> name, Transform<List<List<Tile>>> board}) {
    if (name == null && board == null) {
      return this;
    }

    return GameState(
      name: name?.call(this.name) ?? this.name,
      board: board?.call(this.board) ?? this.board,
    );
  }

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

  static const black = Tile(
    elevation: Elevation.middle,
    color: TileColor(
      r: 0,
      g: 0,
      b: 0,
    ),
  );
  static const white = Tile(
    elevation: Elevation.middle,
    color: TileColor(
      r: 255,
      g: 255,
      b: 255,
    ),
  );
  static const yellow = Tile(
    elevation: Elevation.middle,
    color: TileColor(
      r: 255,
      g: 255,
      b: 0,
    ),
  );
  static const green = Tile(
    elevation: Elevation.middle,
    color: TileColor(
      r: 0,
      g: 255,
      b: 0,
    ),
  );
  static const blue = Tile(
    elevation: Elevation.middle,
    color: TileColor(
      r: 0,
      g: 0,
      b: 255,
    ),
  );
  static const purple = Tile(
    elevation: Elevation.middle,
    color: TileColor(
      r: 255,
      g: 0,
      b: 255,
    ),
  );
  static const cyan = Tile(
    elevation: Elevation.middle,
    color: TileColor(
      r: 0,
      g: 255,
      b: 255,
    ),
  );
  static const red = Tile(
    elevation: Elevation.middle,
    color: TileColor(
      r: 255,
      g: 0,
      b: 0,
    ),
  );

  Tile copyWith({
    Elevation elevation,
    TileColor color,
  }) {
    return Tile(
      elevation: elevation ?? this.elevation,
      color: color ?? this.color,
    );
  }

  static Tile fromJson(Map<String, dynamic> json) => _$TileFromJson(json);

  Map<String, dynamic> toJson() => _$TileToJson(this);
}

extension TileList on List<List<Tile>> {
  List<List<Tile>> withAllTiles(Tile tile) {
    return List.unmodifiable(
      List.generate(5, (_) => List.generate(5, (_) => tile)),
    );
  }

  List<List<Tile>> withTile(int x, int y, Tile Function(Tile tile) fn) {
    return List.unmodifiable(
      List.from(this)..[x][y] = fn(this[x][y]),
    );
  }

  List<List<Tile>> withRow(int x, Tile tile) {
    return List.unmodifiable(
      List.from(this)..[x] = [tile, tile, tile, tile, tile],
    );
  }

  List<List<Tile>> withColumn(int y, Tile tile) {
    return List.unmodifiable(
      List.from(this)
        ..[0][y] = tile
        ..[1][y] = tile
        ..[2][y] = tile
        ..[3][y] = tile
        ..[4][y] = tile,
    );
  }
}
