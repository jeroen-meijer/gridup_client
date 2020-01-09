import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridup_client/ui/theme.dart';

const emptyWidget = SizedBox();
const emptyWideWidget = SizedBox(width: double.infinity);
const emptyExpandedWidget = SizedBox.expand();

const loadingWidget = Center(
  child: CircularProgressIndicator(
    valueColor: AlwaysStoppedAnimation(AppTheme.colorPrimary),
    strokeWidth: 2.0,
  ),
);

const verticalMargin4 = SizedBox(height: 4.0);
const verticalMargin8 = SizedBox(height: 8.0);
const verticalMargin12 = SizedBox(height: 12.0);
const verticalMargin16 = SizedBox(height: 16.0);
const verticalMargin24 = SizedBox(height: 24.0);
const verticalMargin32 = SizedBox(height: 32.0);
const verticalMargin36 = SizedBox(height: 36.0);

const horizontalMargin4 = SizedBox(width: 4.0);
const horizontalMargin8 = SizedBox(width: 8.0);
const horizontalMargin12 = SizedBox(width: 12.0);
const horizontalMargin16 = SizedBox(width: 16.0);
const horizontalMargin24 = SizedBox(width: 24.0);
const horizontalMargin32 = SizedBox(width: 32.0);
const horizontalMargin36 = SizedBox(width: 36.0);
