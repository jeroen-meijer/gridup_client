import 'package:flutter/material.dart';
import 'package:gridup_client/ui/widgets/gridup_button.dart';

class GameRollDice extends StatelessWidget {
  const GameRollDice({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Image.network(
          'https://i.ya-webdesign.com/images/dice-png-icon-4.png',
          height: 200,
        ),
        GridupButton(
          onTap: onTap,
          child: const Text('Roll dice'),
        ),
      ],
    );
  }
}
