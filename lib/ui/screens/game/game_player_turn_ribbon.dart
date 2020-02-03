import 'package:flutter/material.dart';
import 'package:gridup_client/backend/models/models.dart';

class GamePlayerTurnRibbon extends StatelessWidget {
  const GamePlayerTurnRibbon({
    Key key,
    @required this.player,
  }) : super(key: key);

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.black,
      child: Center(
        child: Text(
          "It's player ${player.id}'s turn!",
          style: Theme.of(context).textTheme.headline6.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
