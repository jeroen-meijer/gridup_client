// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playing_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayingCard _$PlayingCardFromJson(Map json) {
  return PlayingCard(
    id: json['id'] as int,
    cardIds: (json['card_ids'] as List)?.map((e) => e as String)?.toList(),
    title: json['title'] as String,
    color: const ColorConverter().fromJson(json['color'] as String),
  );
}

Map<String, dynamic> _$PlayingCardToJson(PlayingCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'card_ids': instance.cardIds,
      'title': instance.title,
      'color': const ColorConverter().toJson(instance.color),
    };
