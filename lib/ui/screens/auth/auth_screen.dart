import 'package:custom_navigator/custom_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/auth/pages/sign_in_page.dart';
import 'package:gridup_client/ui/screens/auth/pages/sign_up_page.dart';
import 'package:gridup_client/ui/screens/auth/pages/start_page.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return CustomNavigator(
      key: _navigatorKey,
      routes: {
        StartPage.routeName: (_) => StartPage(),
        SignInPage.routeName: (_) => SignInPage(),
        SignUpPage.routeName: (_) => SignUpPage(),
      },
      pageRoute: PageRoutes.cupertinoPageRoute,
    );
  }
}
