import 'dart:async';

import 'package:flutter/foundation.dart';

class BehaviorSubject<T> extends ValueListenable<T> {
  ValueNotifier<T> _latest;
  StreamController<T> _controller;

  BehaviorSubject([T value]) {
    _latest = ValueNotifier<T>(value);
    _controller = StreamController<T>.broadcast(
      onListen: () => _controller.add(_latest.value),
    );
  }

  Stream<T> get stream => _controller.stream;

  @override
  T get value => _latest.value;

  set value(T newValue) {
    if (_latest.value == newValue) return;
    _latest.value = newValue;
    _controller.add(newValue);
  }

  void add(T newValue) => value = newValue;

  void addError(Object error, [StackTrace stackTrace]) => _controller.addError(error, stackTrace);

  bool get isClosed => _controller.isClosed;

  void close() => _controller.close();

  @override
  void addListener(listener) => _latest.addListener(listener);

  @override
  void removeListener(listener) => _latest.removeListener(listener);
}
