import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/screens/store/store_screen.dart';
import 'package:gridup_client/ui/theme.dart';
import 'package:gridup_client/ui/widgets/navbar/navbar.dart';
import 'package:meta/meta.dart';

class _Tab {
  const _Tab({
    @required this.item,
    @required this.builder,
  });

  final NavBarItemData item;
  final WidgetBuilder builder;
}

class MainContainer extends StatefulWidget {
  const MainContainer();

  @override
  _MainContainerState createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  static final _tabs = <_Tab>[
    _Tab(
      item: NavBarItemData('Game', Icons.gamepad, 110, AppTheme.colorGame),
      builder: (context) => GameScreen(),
    ),
    _Tab(
      item: NavBarItemData('Store', Icons.store, 110, AppTheme.colorStore),
      builder: (context) => StoreScreen(),
    ),
  ];

  int _lastSelectedTabIndex = 0;
  int _selectedTabIndex = 0;

  _Tab get _currentTab => _tabs[_selectedTabIndex];

  void _onTapNavButton(int index) {
    if (index == _selectedTabIndex) {
      return;
    }

    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: AnimatedSwitcher(
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            duration: const Duration(milliseconds: 100),
            child: Theme(
              key: ValueKey('tab-content-index-$_selectedTabIndex'),
              data: ThemeData(accentColor: _currentTab.item.selectedColor),
              child: Builder(builder: _currentTab.builder),
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavBar(
        items: _tabs.map((tab) => tab.item).toList(),
        itemTapped: _onTapNavButton,
        currentIndex: _selectedTabIndex,
      ),
    );
  }
}
