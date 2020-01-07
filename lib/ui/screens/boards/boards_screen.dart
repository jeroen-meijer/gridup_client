import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/scrollable_header_view.dart';
import 'package:gridup_client/ui/context.dart';
import 'package:gridup_client/ui/theme.dart';

class BoardsScreen extends StatefulWidget {
  static const title = 'My Boards';
  static const tabTitle = title;

  @override
  _BoardsScreenState createState() => _BoardsScreenState();
}

class _BoardsScreenState extends State<BoardsScreen> {
  @override
  Widget build(BuildContext context) {
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
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 3,
        children: <Widget>[
          for (final index in List.generate(30, (_) => _))
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: theme.accentColor,
                        border: Border.all(
                          color: theme.primaryColor,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Icon(
                        AppTheme.iconChessPiece,
                        size: 52,
                      ),
                    ),
                  ),
                ),
                Text('Board ${index + 1}'),
              ],
            ),
        ],
      ),
    );
  }
}
