import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/theme.dart';
import 'package:gridup_client/ui/widgets/gridup_button.dart';

class P1End extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.paddingGameScreen,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: GridupButton(
          onTap: () => navigateToNextPage(context),
          child: const Text('End turn'),
        ),
      ),
    );
  }
}
