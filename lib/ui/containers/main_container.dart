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
    @required this.child,
  });

  final NavBarItemData item;
  final Widget child;
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
        AppTheme.colorAuth,
      ),
      child: AuthScreen(),
    ),
    _Tab(
      item: NavBarItemData(
        'My Boards',
        AppTheme.iconLogo,
        130,
        AppTheme.colorBoards,
      ),
      child: BoardsScreen(),
    ),
    _Tab(
      item: NavBarItemData(
        'Store',
        Icons.store,
        110,
        AppTheme.colorStore,
      ),
      child: StoreScreen(),
    ),
  ];

  int _selectedTabIndex = 0;

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
          child: IndexedStack(
            index: _selectedTabIndex,
            children: [for (final tab in _tabs) tab.child],
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
