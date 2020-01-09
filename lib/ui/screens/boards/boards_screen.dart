import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/backend/models/game_info.dart';
import 'package:gridup_client/ui/screens/scrollable_header_view.dart';
import 'package:gridup_client/ui/context.dart';
import 'package:gridup_client/ui/theme.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

class BoardsScreen extends StatefulWidget {
  static const title = 'My Boards';
  static const tabTitle = title;

  @override
  _BoardsScreenState createState() => _BoardsScreenState();
}

class _BoardsScreenState extends State<BoardsScreen> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ScrollableHeaderView(
      title: BoardsScreen.title,
      bottomPadding: 32.0,
      leading: const Icon(Icons.menu),
      trailing: SizedBox(
        width: 42,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Icon(AppTheme.iconChessPiece),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.add,
                size: 20,
              ),
            ),
          ],
        ),
      ),
      child: FutureBuilder<List<GameInfo>>(
        future: Backend.instance.getAllGames(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return loadingWidget;
          }

          final games = snapshot.data.take(4 * 3);

          return GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            children: <Widget>[
              for (final game in games)
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Image.network(game.imageUrls.first),
                        ),
                        verticalMargin4,
                        Text(
                          game.title.split(':')[0],
                          maxLines: 2,
                          overflow: TextOverflow.clip,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
