import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/ui/theme.dart';

class GridupLogo extends StatelessWidget {
  const GridupLogo({
    Key key,
    this.iconSize = 32.0,
    this.borderRadius = 10.0,
    this.padding = 6.0,
  }) : super(key: key);

  final double iconSize;
  final double borderRadius;
  final double padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.accentColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: EdgeInsets.all(padding),
      child: Icon(
        AppTheme.iconLogo,
        size: iconSize,
        color: theme.primaryColor,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DoubleProperty('iconSize', iconSize))
      ..add(DoubleProperty('borderRadius', borderRadius))
      ..add(DoubleProperty('padding', padding));
  }
}
