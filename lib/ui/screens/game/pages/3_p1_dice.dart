import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/ui/screens/game/game_roll_dice.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/theme.dart';
import 'package:pedantic/pedantic.dart';

class P1Dice extends StatefulWidget {
  @override
  _P1DiceState createState() => _P1DiceState();
}

class _P1DiceState extends State<P1Dice> {
  bool _isRolling = false;

  Future<void> _onRollDice() async {
    setState(() {
      _isRolling = true;
    });

    unawaited(backend.rollDice(3));
    await Future.delayed(const Duration(seconds: 6));
    navigateToNextPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: AppTheme.paddingGameScreen,
        child: GameRollDice(
          onTap: _isRolling ? null : _onRollDice,
        ),
      ),
    );
  }
}
