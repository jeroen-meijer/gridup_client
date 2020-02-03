import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/game/game_options_buttons.dart';
import 'package:gridup_client/ui/theme.dart';

class P2Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppTheme.paddingGameScreen,
        child: GameOptionsButtons(),
      ),
    );
  }
}
