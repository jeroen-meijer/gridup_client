import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/backend/mock_data.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/theme.dart';
import 'package:gridup_client/ui/ui_utils.dart';
import 'package:gridup_client/ui/widgets/game_details_page.dart';
import 'package:gridup_client/ui/widgets/gridup_button.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

class GamePreview extends StatelessWidget {
  const GamePreview({
    Key key,
    @required this.game,
    this.isPlayable = false,
  }) : super(key: key);

  final GameInfo game;
  final bool isPlayable;

  Future<void> show(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (_) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: kTextTabBarHeight,
              child: Stack(
                children: <Widget>[
                  const Positioned(
                    left: 0,
                    child: BackButton(),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: Text(
                        shortTitle(game),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalMargin8,
            SizedBox(
              height: 120.0,
              child: Image.network(
                game.imageUrls[0],
                alignment: Alignment.center,
                loadingBuilder: (context, child, loadingProgress) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: loadingProgress != null ? loadingWidget : child,
                  );
                },
              ),
            ),
            verticalMargin8,
            GridupButton(
              onTap: game.ifPlayable(
                () {
                  Navigator.of(context)
                    ..pop()
                    ..push(GameScreen().route);
                },
              ),
              icon: Icon(Icons.play_arrow),
              child: const Text('Start game'),
            ),
            verticalMargin8,
            GridupButton(
              color: AppTheme.colorNearlyWhite,
              onTap: () {
                Navigator.of(context)
                  ..pop()
                  ..push(GameDetailsPage(game: game).route);
              },
              icon: Icon(Icons.info_outline),
              child: const Text('View details'),
            ),
          ],
        ),
      ),
    );
  }
}
