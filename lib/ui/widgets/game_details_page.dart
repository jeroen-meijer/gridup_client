import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/backend/mock_data.dart';
import 'package:gridup_client/backend/models/game_info.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/screens/scrollable_header_view.dart';
import 'package:gridup_client/ui/theme.dart';
import 'package:gridup_client/ui/ui_utils.dart';
import 'package:gridup_client/ui/widgets/gridup_button.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

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
    return ScrollableHeaderView(
      leading: const BackButton(),
      title: shortTitle(game),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GridupButton(
              onTap: game.ifPlayable(
                () {
                  Navigator.of(context)
                    ..pop()
                    ..push(GameScreen().route);
                },
              ),
              child: const Text('Start game'),
            ),
            verticalMargin32,
            Row(
              children: <Widget>[
                Expanded(
                  child: _SummaryItem(
                    top: Row(
                      children: <Widget>[
                        Text(game.score.toStringAsPrecision(1)),
                        Icon(Icons.star),
                      ],
                    ),
                    bottom: Text('${(game.reviewsAmount / 1000).round()}K reviews'),
                  ),
                ),
                Expanded(
                  child: _SummaryItem(
                    top: Text('${(game.downloadsAmount / 1000000).floor()}M+'),
                    bottom: const Text('downloads'),
                  ),
                ),
                Expanded(
                  child: _SummaryItem(
                    top: Text('${game.playersLowerBound}-${game.playersUpperBound}'),
                    bottom: const Text('players'),
                  ),
                ),
              ],
            ),
            verticalMargin16,
            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: game.imageUrls.length,
                separatorBuilder: (context, i) {
                  return horizontalMargin16;
                },
                itemBuilder: (context, i) {
                  return Image.network(game.imageUrls[i]);
                },
              ),
            ),
            verticalMargin16,
            Text(game.description),
          ],
        ),
      ),
    );
  }
}

class _SummaryItem extends StatelessWidget {
  const _SummaryItem({
    Key key,
    @required this.top,
    @required this.bottom,
  }) : super(key: key);

  final Widget top;
  final Widget bottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DefaultTextStyle(
          style: DefaultTextStyle.of(context).style.copyWith(
                fontWeight: AppTheme.fontWeightBold,
              ),
          child: IconTheme(
            data: IconTheme.of(context).copyWith(
              size: 14.0,
            ),
            child: top,
          ),
        ),
        verticalMargin4,
        bottom,
      ],
    );
  }
}
