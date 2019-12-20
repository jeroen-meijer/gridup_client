import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/ui/theme.dart';

class ScrollableHeaderView extends StatelessWidget {
  const ScrollableHeaderView({
    @required this.title,
    @required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        CupertinoSliverNavigationBar(
          largeTitle: Text(
            title,
            style: AppTheme.textStyleHeader,
          ),
          backgroundColor: AppTheme.colorBackground,
          border: const Border(),
          // padding: const EdgeInsetsDirectional.only(bottom: 16.0),
        ),
        SliverToBoxAdapter(
          child: child,
        ),
      ],
    );
  }
}
