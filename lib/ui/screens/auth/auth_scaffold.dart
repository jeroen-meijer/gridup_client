import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/ui/widgets/widget_utils.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({
    Key key,
    this.useNavigationBar = true,
    this.navigationBarMiddle,
    @required this.child,
  }) : super(key: key);

  final bool useNavigationBar;
  final Widget navigationBarMiddle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.transparent,
      navigationBar: !useNavigationBar
          ? null
          : CupertinoNavigationBar(
              backgroundColor: Colors.transparent,
              brightness: Brightness.dark,
              leading: const BackButton(color: Colors.white),
              middle: DefaultTextStyle(
                style: const TextStyle(color: Colors.white),
                child: IconTheme(
                  data: const IconThemeData(color: Colors.white),
                  child: navigationBarMiddle,
                ),
              ),
            ),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          const _AuthScaffoldBackground(),
          SafeArea(child: child),
        ],
      ),
    );
  }
}

class _AuthScaffoldBackground extends StatelessWidget {
  const _AuthScaffoldBackground();

  static const _backgroundBorderRadius = 15.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(color: Theme.of(context).accentColor),
        Column(
          children: <Widget>[
            Expanded(
              child: Material(
                color: Theme.of(context).primaryColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(_backgroundBorderRadius),
                      bottomRight: Radius.circular(_backgroundBorderRadius),
                      ),
                ),
                child: emptyExpandedWidget,
              ),
            ),
            const Spacer(),
          ],
        ),
      ],
    );
  }
}
