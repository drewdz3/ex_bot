import 'package:realm/realm.dart';

abstract class DataMapper<TDomain, TData> {
  TDomain toData(TData data);
  List<TDomain> toDataList(List<RealmObject> data);
  TData toDatabase(TDomain entity);
  List<TData> toDatabaseList(List<TDomain> entities);
}
