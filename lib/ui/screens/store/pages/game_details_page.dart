import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/backend/models/game_info.dart';

class GameDetailsPage extends StatelessWidget {
  const GameDetailsPage({
    Key key,
    @required this.game,
  }) : super(key: key);

  final GameInfo game;

  PageRoute get route {
    return CupertinoPageRoute(
      builder: (context) {
        return this;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
