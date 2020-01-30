import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/auth/auth_scaffold.dart';
import 'package:gridup_client/ui/screens/auth/pages/sign_in_page.dart';
import 'package:gridup_client/ui/screens/auth/pages/sign_up_page.dart';
import 'package:gridup_client/ui/theme.dart';
import 'package:gridup_client/ui/widgets/gridup_button.dart';
import 'package:gridup_client/ui/widgets/gridup_logo.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

class StartPage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      useNavigationBar: false,
      child: Stack(
        children: const <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 42.0),
              child: _Logo(),
            ),
          ),
          Center(
            child: Card(
              margin: EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.0,
                    vertical: 52.0,
                  ),
                  child: _Content(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: <Widget>[
        const GridupLogo(),
        verticalMargin12,
        Text(
          'GridUP',
          style: theme.textTheme.headline.copyWith(
            color: theme.accentColor,
          ),
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Welcome to GridUP',
          style: theme.textTheme.headline.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Any board game at any time.',
          style: theme.textTheme.subhead,
        ),
        verticalMargin36,
        GridupButton(
          onTap: () {
            Navigator.of(context).pushNamed(SignInPage.routeName);
          },
          child: const Text('Sign In'),
        ),
        verticalMargin24,
        GridupButton(
          color: theme.accentColor == Colors.white ? AppTheme.colorNearlyWhite : theme.accentColor,
          onTap: () {
            Navigator.of(context).pushNamed(SignUpPage.routeName);
          },
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
