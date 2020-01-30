import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/backend/mock_data.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/ui/screens/game/pages/pages.dart';
import 'package:gridup_client/ui/screens/game/playing_card_bottom_sheet.dart';
import 'package:gridup_client/ui/widgets/fade_scale_switcher.dart';

class GameScreen extends StatefulWidget {
  PageRoute get route {
    return CupertinoPageRoute(
      builder: (context) {
        return this;
      },
    );
  }

  static _GameScreenState of(BuildContext context) {
    return context.findAncestorStateOfType<_GameScreenState>();
  }

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  StreamSubscription<PlayingCard> _playingCardStream;
  int _pageIndex = 0;

  WidgetBuilder get _pageBuilder => pages[_pageIndex];

  @override
  void initState() {
    super.initState();
    _playingCardStream = Backend.instance.playingCardStream.listen(_onCardScanned);
  }

  @override
  void dispose() {
    _playingCardStream?.cancel();
    super.dispose();
  }

  void navigateToNextPage() {
    setState(() {
      _pageIndex++;
    });
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: const Icon(Icons.menu),
        middle: Text(playableGame.title),
      ),
      body: FadeScaleSwitcher(
        preserveLastChildUntilDone: true,
        child: SizedBox.fromSize(
          key: ValueKey('game-screen-page-$_pageIndex'),
          size: MediaQuery.of(context).size,
          child: Builder(
            builder: _pageBuilder,
          ),
        ),
      ),
    );
  }
}
