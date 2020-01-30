import 'package:flutter/foundation.dart';

abstract class CachedStream<T> extends ValueListenable<T> {
  @override
  T get value;
  Stream<T> get stream;

  bool get exists => value != null;
  bool get doesNotExist => !exists;
}
