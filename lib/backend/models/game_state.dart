import 'package:json_annotation/json_annotation.dart';

part 'game_state.g.dart';

@JsonSerializable()
class GameState {
  static GameState fromJson(Map<String, dynamic> json) => _$GameStateFromJson(json);

  Map<String, dynamic> toJson() => _$GameStateToJson(this);
}
