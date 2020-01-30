import 'package:state_persistence/state_persistence.dart';

class Store {
  Store._(this._data);

  static const _kStorage = JsonFileStorage(filename: 'gridup_store.json');
  static const _kSaveTimeout = Duration(milliseconds: 500);

  static Future<Store> init() async {
    final data = await PersistedData.load(_kStorage, _kSaveTimeout);
    return Store._(data);
  }

  final PersistedData _data;
}
