import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/ui/screens/game/game_player_turn_ribbon.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';

class P1Turn extends StatelessWidget {
  P1Turn() {
    backend.setGameState(gameState1);
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: InkRipple.splashFactory,
      onTap: () => navigateToNextPage(context),
      child: Container(
        color: Colors.grey,
        child: const Center(
          child: GamePlayerTurnRibbon(player: Player.one),
        ),
      ),
    );
  }
}
