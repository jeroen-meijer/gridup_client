import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/auth/auth_scaffold.dart';
import 'package:gridup_client/ui/widgets/gridup_button.dart';
import 'package:gridup_client/ui/widgets/gridup_logo.dart';
import 'package:gridup_client/ui/widgets/gridup_text_field.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

class SignUpPage extends StatelessWidget {
  static const routeName = '/signUp';

  @override
  Widget build(BuildContext context) {
    return AuthScaffold(
      navigationBarMiddle: const GridupLogo(
        iconSize: 22,
        padding: 2.0,
        borderRadius: 4.0,
      ),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.headline.copyWith(color: Colors.white),
                  ),
                  verticalMargin8,
                  Text(
                    'Sign up to start playing.',
                    style: Theme.of(context).textTheme.body1.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          const Center(
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

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const GridupTextField(
          value: 'Full Name',
          icon: Icons.person,
        ),
        verticalMargin8,
        const GridupTextField(
          value: 'Email',
          icon: Icons.email,
        ),
        verticalMargin8,
        const GridupTextField(
          value: 'Password',
          icon: Icons.lock,
        ),
        verticalMargin32,
        GridupButton(
          onTap: () {},
          child: const Text('Sign Up'),
        ),
      ],
    );
  }
}
