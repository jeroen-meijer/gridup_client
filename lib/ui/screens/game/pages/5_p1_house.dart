import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/ui/screens/game/game_house_upgrades.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/theme.dart';

class P1House extends StatelessWidget {
  P1House() {
    backend.setGameState(gameState3);
  }

  void _onUpgrade() {
    backend.setGameState(gameState4);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.paddingGameScreen,
      child: GameHouseUpgrades(
        onUpgrade: _onUpgrade,
        onContinue: () => navigateToNextPage(context),
      ),
    );
  }
}
