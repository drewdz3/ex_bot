import 'package:realm/realm.dart';

abstract class DatabaseDatasource {
  Future<T?> getItem<T extends RealmObject>(Object key);

  Future<List<T>> getAll<T extends RealmObject>();

  Future<void> saveData<T extends RealmObject>(T data);

  Future<void> addAll<T extends RealmObject>(List<T> data);

  Future<void> deleteData<T extends RealmObject>(T data);
}
