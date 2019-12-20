import 'package:flutter/material.dart';

class Player {
  const Player._(this.id, this.title, this.color);

  static const blue = Player._(0, 'Blue', Colors.blue);
  static const red = Player._(1, 'Red', Colors.red);
  static const green = Player._(2, 'Green', Colors.green);
  static const yellow = Player._(3, 'Yellow', Colors.yellow);

  static const fallback = blue;

  static List<Player> get values => [
        blue,
        red,
        green,
        yellow,
      ];

  final int id;
  final String title;
  final Color color;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is Player && runtimeType == other.runtimeType && id == other.id) {
      return true;
    }
    if (other is int) {
      return id == other;
    }
    return false;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => title;
}
