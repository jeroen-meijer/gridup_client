import 'package:flutter/material.dart';
import 'package:gridup_client/ui/screens/scrollable_header_view.dart';
import 'package:gridup_client/ui/theme.dart';

class StoreScreen extends StatefulWidget {
  static const title = 'Store';
  static const tabTitle = title;

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ScrollableHeaderView(
      title: StoreScreen.title,
      child: Column(
        children: <Widget>[
          for (final _ in List.generate(10, (_) => _))
            Container(
              color: AppTheme.colorStore,
              height: 120,
              margin: const EdgeInsets.all(10),
            ),
        ],
      ),
    );
  }
}
