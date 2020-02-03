import 'package:flutter/material.dart';
import 'package:gridup_client/backend/models/models.dart';
import 'package:gridup_client/ui/widgets/gridup_button.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

class GamePropertyRent extends StatelessWidget {
  const GamePropertyRent({
    Key key,
    @required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        width: 280,
        height: 400,
        decoration: BoxDecoration(
          border: Border.all(
            width: 4,
            color: Colors.black,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 16,
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    border: Border.all(
                      width: 2,
                      color: Colors.black,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Lijnsingel',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          'Rotterdam',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GridupButton(
                    onTap: onTap,
                    child: const Text('Pay rent'),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text("You've landed on player ${Player.two.id}'s property!"),
                    verticalMargin4,
                    const Text(
                      'Rent due:',
                      style: TextStyle(color: Colors.grey),
                    ),
                    verticalMargin16,
                    Text(
                      '€ 25',
                      style: Theme.of(context).textTheme.headline2,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
