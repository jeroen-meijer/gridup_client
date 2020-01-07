import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GridupButton extends StatelessWidget {
  const GridupButton({
    Key key,
    this.color,
    this.width,
    @required this.onTap,
    @required this.child,
  }) : super(key: key);

  final Color color;
  final double width;
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final buttonColor = color ?? theme.primaryColor;
    final textColor = buttonColor.computeLuminance() >= 0.5 ? Colors.black : Colors.white;

    return SizedBox(
      height: 44.0,
      child: CupertinoButton(
        color: buttonColor,
        minSize: width ?? double.infinity,
        onPressed: onTap,
        child: DefaultTextStyle(
          style: TextStyle(
            color: textColor,
            fontFamily: theme.textTheme.body1.fontFamily,
          ),
          child: child,
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ColorProperty('color', color))
      ..add(ObjectFlagProperty<VoidCallback>.has('onTap', onTap))
      ..add(DiagnosticsProperty<Widget>('child', child));
  }
}
