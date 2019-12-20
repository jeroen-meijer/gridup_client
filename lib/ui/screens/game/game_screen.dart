import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/ui/screens/game/playing_card_bottom_sheet.dart';
import 'package:gridup_client/ui/screens/scrollable_header_view.dart';
import 'package:gridup_client/ui/theme.dart';

class GameScreen extends StatefulWidget {
  static const title = 'Game';
  static const tabTitle = title;

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  StreamSubscription<PlayingCard> _playingCardStream;

  @override
  void initState() {
    super.initState();
    _playingCardStream = Backend.instance.playingCardStream.listen(_onCardScanned);
  }

  Future<void> _onCardScanned(PlayingCard card) async {
    if (card.isInvalid) {
      Scaffold.of(context).showSnackBar(const SnackBar(content: Text('Invalid card scanned.')));
      return;
    }

    final willPlay = await PlayingCardBottomSheet(card: card).show(context) ?? false;

    print('willPlay: $willPlay');
  }

  @override
  void dispose() { 
    _playingCardStream?.cancel();
    super.dispose();
  }

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
