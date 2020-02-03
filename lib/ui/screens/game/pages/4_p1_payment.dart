import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/game/game_property_rent.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/theme.dart';

class P1Payment extends StatelessWidget {
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
