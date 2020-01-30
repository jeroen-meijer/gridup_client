import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget fadeScaleTransitionBuilder(Widget child, Animation<double> animation) {
  return FadeTransition(
    opacity: animation,
    child: ScaleTransition(
      scale: animation.drive(Tween(begin: 0.8, end: 1.0)),
      child: child,
    ),
  );
}

class FadeScaleSwitcher extends StatelessWidget {
  const FadeScaleSwitcher({
    Key key,
    this.preserveLastChildUntilDone = false,
    this.duration = const Duration(milliseconds: 125),
    @required this.child,
  })  : assert(duration != null, 'duration must not be null.'),
        super(key: key);

  final bool preserveLastChildUntilDone;
  final Duration duration;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      switchInCurve: Curves.easeOutQuad,
      switchOutCurve: preserveLastChildUntilDone ? const Threshold(1.0).flipped : Curves.easeOutQuad.flipped,
      transitionBuilder: fadeScaleTransitionBuilder,
      child: child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<bool>('preserveLastChildUntilDone', preserveLastChildUntilDone))
      ..add(DiagnosticsProperty<Duration>('duration', duration))
      ..add(DiagnosticsProperty<Widget>('child', child));
  }
}
