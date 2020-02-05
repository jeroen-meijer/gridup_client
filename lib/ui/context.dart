import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/backend/backend.dart';

extension WidgetContext<T extends StatefulWidget> on State<T> {
  MediaQueryData get mediaQuery => MediaQuery.of(context);
  ThemeData get theme => Theme.of(context);
  NavigatorState get navigator => Navigator.of(context);
}
