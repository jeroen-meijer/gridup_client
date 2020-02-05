import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/ui/screens/game/game_property_rent.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/theme.dart';

class P1Payment extends StatelessWidget {
  P1Payment() {
    backend.setGameState(gameState2);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.paddingGameScreen,
      child: GamePropertyRent(
        onTap: () => navigateToNextPage(context),
      ),
    );
  }
}
