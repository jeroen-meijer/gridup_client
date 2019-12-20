import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/scrollable_header_view.dart';
import 'package:gridup_client/ui/theme.dart';

class GameScreen extends StatefulWidget {
  static const title = 'Game';
  static const tabTitle = title;

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return ScrollableHeaderView(
      title: GameScreen.title,
      child: Column(
        children: <Widget>[
          for (final _ in List.generate(10, (_) => _))
            Container(
              color: AppTheme.colorGame,
              height: 120,
              margin: const EdgeInsets.all(10),
            ),
        ],
      ),
    );
  }
}
