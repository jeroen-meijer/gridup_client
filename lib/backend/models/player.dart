import 'package:flutter/material.dart';

class Player {
  const Player._(this.id, this.title, this.color);

  static const one = Player._(1, 'Red', Color(0xFFFF0000));
  static const two = Player._(2, 'Blue', Colors.blue);
  static const three = Player._(3, 'Green', Colors.green);
  static const four = Player._(4, 'Yellow', Colors.yellow);

  static const red = one;
  static const blue = two;
  static const green = three;
  static const yellow = four;

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
