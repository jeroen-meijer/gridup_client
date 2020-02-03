import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/game/game_screen.dart';
import 'package:gridup_client/ui/widgets/gridup_button.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

class GameOptionsButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GridupButton(
          onTap: () => navigateToNextPage(context),
          child: const Text('Roll dice'),
        ),
        verticalMargin4,
        GridupButton(
          onTap: () {},
          child: const Text('Buy houses/hotels'),
        ),
      ],
    );
  }
}
