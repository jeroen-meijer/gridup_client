import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/game/game_roll_dice.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/theme.dart';

class P1Dice extends StatelessWidget {
  P1Dice() {
    print('P1Dice');
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppTheme.paddingGameScreen,
        child: GameRollDice(
          onTap: () => navigateToNextPage(context),
        ),
      ),
    );
  }
}
