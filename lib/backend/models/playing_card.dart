import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'playing_card.g.dart';

@JsonSerializable()
class PlayingCard {
  const PlayingCard({
    @required this.id,
    @required this.cardIds,
    @required this.title,
    @required this.color,
  });

  final int id;
  final List<String> cardIds;
  final String title;

  @ColorConverter()
  final Color color;

  static const invalidCard = PlayingCard(
    id: -1,
    cardIds: [],
    title: 'INVALID',
    color: Colors.grey,
  );

  static PlayingCard fromJson(Map<String, dynamic> json) => _$PlayingCardFromJson(json);

  Map<String, dynamic> toJson() => _$PlayingCardToJson(this);

  bool get isValid => this != invalidCard;
  bool get isInvalid => !isValid;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is PlayingCard && runtimeType == other.runtimeType && id == other.id) {
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

class ColorConverter implements JsonConverter<Color, String> {
  const ColorConverter();

  @override
  Color fromJson(String value) {
    final hexColor = value.replaceAll('#', '');
    return Color(int.parse('FF$hexColor', radix: 16));
  }

  @override
  String toJson(Color value) {
    throw UnimplementedError("Color's toJson is not implemented.");
  }
}
