import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/theme.dart';

class P2Chance extends StatefulWidget {
  @override
  _P2ChanceState createState() => _P2ChanceState();
}

class _P2ChanceState extends State<P2Chance> {
  StreamSubscription<PlayingCard> _playingCardStream;
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

  void _onCardScanned(PlayingCard card) {
    navigateToNextPage(context);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: AppTheme.paddingGameScreen,
      child: Center(
        child: FittedBox(
          child: SizedBox(
            width: 370,
            height: 500,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 6),
              ),
              child: Column(
                children: <Widget>[
                  const Spacer(),
                  Text(
                    'Scan chance card',
                    style: textTheme.headline4,
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 300,
                    height: 150,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2),
                      ),
                      child: Center(
                        child: Text(
                          '?',
                          style: textTheme.headline2,
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: Text(
                      'Put a chance card against your phone and see what happens!',
                      textAlign: TextAlign.center,
                      style: textTheme.headline5,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
