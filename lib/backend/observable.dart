import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:gridup_client/backend/cached_stream.dart';

class Observable<T> extends CachedStream<T> {
  Observable(Stream<T> stream)
      : assert(stream != null, 'stream must not be null.'),
        _stream = stream {
    _latest = ValueNotifier<T>(null);
    _streamSubscription = stream.listen((value) => _latest.value = value);
  }

  final Stream<T> _stream;

  ValueNotifier<T> _latest;
  StreamSubscription<T> _streamSubscription;

  void cancel() => _streamSubscription.cancel();

  @override
  T get value => _latest.value;

  @override
  Stream<T> get stream => _stream;

  @override
  void addListener(listener) => _latest.addListener(listener);

  @override
  void removeListener(listener) => _latest.removeListener(listener);
}
