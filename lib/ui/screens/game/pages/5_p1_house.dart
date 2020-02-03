import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/game/game_house_upgrades.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/theme.dart';

class P1House extends StatelessWidget {
  void _onUpgrade() {}

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
