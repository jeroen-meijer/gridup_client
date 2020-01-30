import 'package:flutter/rendering.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'tile_color.g.dart';

@JsonSerializable()
class TileColor {
  const TileColor({
    @required this.r,
    @required this.g,
    @required this.b,
  })  : assert(
          r >= 0 && r <= 255,
          'Red value must be between 0 and 255 (inclusive).',
        ),
        assert(
          g >= 0 && g <= 255,
          'Green value must be between 0 and 255 (inclusive).',
        ),
        assert(
          b >= 0 && b <= 255,
          'Blue value must be between 0 and 255 (inclusive).',
        );

  final int r;
  final int g;
  final int b;

  factory TileColor.fromMaterialColor(Color materialColor) {
    return TileColor(
      r: materialColor.red,
      g: materialColor.green,
      b: materialColor.blue,
    );
  }

  Color toMaterialColor() {
    return Color.fromARGB(255, r, g, b);
  }

  static TileColor fromJson(Map<String, dynamic> json) => _$TileColorFromJson(json);

  Map<String, dynamic> toJson() => _$TileColorToJson(this);
}
