import 'package:flutter/material.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

class GridupTextField extends StatelessWidget {
  const GridupTextField({
    Key key,
    @required this.value,
    this.icon,
  }) : super(key: key);

  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade400,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8.0,
          vertical: 10.0,
        ),
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.grey.shade600,
            ),
            horizontalMargin12,
            Text(
              value,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
