import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GridupButton extends StatelessWidget {
  const GridupButton({
    Key key,
    this.color,
    this.width,
    @required this.onTap,
    this.icon,
    @required this.child,
  }) : super(key: key);

  final Color color;
  final double width;
  final VoidCallback onTap;
  final Widget icon;
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
        padding: EdgeInsets.zero,
        onPressed: onTap,
        child: DefaultTextStyle(
          style: TextStyle(
            color: textColor,
            fontFamily: theme.textTheme.body1.fontFamily,
          ),
          child: IconTheme(
            data: IconTheme.of(context).copyWith(
              size: 32.0,
              color: textColor,
            ),
            child: icon == null
                ? Center(
                    child: child,
                  )
                : Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: icon,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: child,
                      ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ColorProperty('color', color))
      ..add(DoubleProperty('width', width))
      ..add(ObjectFlagProperty<VoidCallback>.has('onTap', onTap))
      ..add(DiagnosticsProperty<Widget>('icon', icon))
      ..add(DiagnosticsProperty<Widget>('child', child));
  }
}
