import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/ui/theme.dart';

class ScrollableHeaderView extends StatelessWidget {
  const ScrollableHeaderView({
    this.title,
    this.bottomPadding,
    this.leading,
    this.trailing,
    @required this.child,
  });

  final String title;
  final double bottomPadding;
  final Widget leading;
  final Widget trailing;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            key: ValueKey('scrollable-header-view-$title'),
            heroTag: ValueKey('scrollable-header-view-hero-$title'),
            leading: leading,
            trailing: trailing,
            largeTitle: title == null
                ? null
                : Text(
                    title,
                    style: AppTheme.textStyleHeader,
                  ),
            backgroundColor: AppTheme.colorBackground,
            border: const Border(),
            // padding: const EdgeInsetsDirectional.only(bottom: 16.0),
          ),
          SliverToBoxAdapter(
            child: Material(
              type: MaterialType.transparency,
              child: child,
            ),
          ),
          if (bottomPadding != null)
            SliverToBoxAdapter(
              child: SizedBox(height: bottomPadding),
            ),
        ],
      ),
    );
  }
}
