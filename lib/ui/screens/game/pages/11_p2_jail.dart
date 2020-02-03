import 'package:flutter/material.dart';
import 'package:gridup_client/ui/theme.dart';
import 'package:gridup_client/ui/widgets/gridup_button.dart';

class P2Jail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppTheme.paddingGameScreen,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              "That's unfortunate!\nYou've landed in jail.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: GridupButton(
              onTap: () {},
              child: const Text('End turn'),
            ),
          ),
        ],
      ),
    );
  }
}
