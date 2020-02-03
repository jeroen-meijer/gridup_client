import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';
import 'package:gridup_client/backend/manual_resource.dart';
import 'package:gridup_client/backend/mock_data.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/ui/screens/game/pages/pages.dart';
import 'package:gridup_client/ui/widgets/fade_scale_switcher.dart';

void navigateToNextPage(BuildContext context) {
  return GameScreen.of(context).navigateToNextPage();
}

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
  int _pageIndex = 0;

  GamePage get _page => pages[_pageIndex];
  WidgetBuilder get _pageBuilder => _page.builder;

  void navigateToNextPage() {
    setState(() {
      _pageIndex++;
    });
  }

  void _onTapManualButton() {
    Backend.instance.openManual(resource: _page.resource);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: const Icon(Icons.menu),
        middle: Text(playableGame.title),
        trailing: IconButton(
          icon: Icon(
            Icons.library_books,
          ),
          onPressed: _onTapManualButton,
        ),
      ),
      body: FadeScaleSwitcher(
        preserveLastChildUntilDone: true,
        child: SizedBox.fromSize(
          key: ValueKey('game-screen-page-$_pageIndex'),
          size: MediaQuery.of(context).size,
          child: Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Builder(
              builder: _pageBuilder,
            ),
          ),
        ),
      ),
    );
  }
}
