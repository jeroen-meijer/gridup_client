import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/game/game_options_buttons.dart';
import 'package:gridup_client/ui/theme.dart';

class P1Options extends StatelessWidget {
  P1Options() {
    print('P1Options');
  }
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
