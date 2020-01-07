import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/auth/auth_screen.dart';
import 'package:gridup_client/ui/screens/boards/boards_screen.dart';
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
      item: NavBarItemData(
        'Auth',
        Icons.supervised_user_circle,
        130,
        AppTheme.colorBoards,
      ),
      builder: (context) => AuthScreen(),
    ),
    _Tab(
      item: NavBarItemData(
        'My Boards',
        AppTheme.iconLogo,
        130,
        AppTheme.colorBoards,
      ),
      builder: (context) => BoardsScreen(),
    ),
    _Tab(
      item: NavBarItemData(
        'Store',
        Icons.store,
        110,
        AppTheme.colorStore,
      ),
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
        top: false,
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
            child: Builder(
              key: ValueKey('tab-content-index-$_selectedTabIndex'),
              builder: _currentTab.builder,
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavBar(
        items: [
          for (final tab in _tabs) tab.item,
        ],
        itemTapped: _onTapNavButton,
        currentIndex: _selectedTabIndex,
      ),
    );
  }
}
