import 'package:flutter/material.dart';
import 'package:gridup_client/backend/models/playing_card.dart';
import 'package:gridup_client/ui/theme.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

class PlayingCardBottomSheet extends StatelessWidget {
  const PlayingCardBottomSheet({
    Key key,
    @required this.card,
  }) : super(key: key);

  final PlayingCard card;

  Future<bool> show(BuildContext context) {
    return showModalBottomSheet<bool>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      isDismissible: true,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      builder: (context) => Padding(
        padding: const EdgeInsets.all(32),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: <Widget>[
        const Text(
          'Play this card?',
          style: TextStyle(fontSize: 32),
          textAlign: TextAlign.center,
        ),
        verticalMargin12,
        SizedBox(
          height: 180,
          child: Card(
            color: card.color,
            child: Center(
              child: Text(
                card.title,
                style: TextStyle(
                  color: card.color.computeLuminance() > 0.5 ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
        ),
        verticalMargin16,
        _DialogButton(
          title: 'Play',
          color: AppTheme.colorBoards,
          textColor: Colors.white,
          value: true,
        ),
        verticalMargin8,
        const _DialogButton(
          title: 'Cancel',
          color: Colors.white,
          borderColor: Colors.black,
          value: false,
        ),
      ],
    );
  }
}

class _DialogButton extends StatelessWidget {
  const _DialogButton({
    Key key,
    @required this.title,
    @required this.color,
    this.textColor,
    this.borderColor,
    @required this.value,
  }) : super(key: key);

  final String title;
  final Color color;
  final Color textColor;
  final Color borderColor;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero, side: BorderSide(color: borderColor ?? color)),
      color: color,
      onPressed: () => Navigator.of(context).pop<bool>(value),
      child: SizedBox(
        width: double.infinity,
        height: 52,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: textColor ?? ((color.computeLuminance() > 0.5) ? Colors.black : Colors.white),
              fontSize: 20,
              fontWeight: AppTheme.fontWeightLight,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
