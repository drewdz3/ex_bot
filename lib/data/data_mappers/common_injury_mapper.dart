import 'package:injectable/injectable.dart';
import 'package:realm_dart/src/realm_object.dart';

import 'package:ex_bot/data/data_mappers/data_mapper.dart';
import 'package:ex_bot/data/models/common_injury.dart';
import 'package:ex_bot/data/realm_models/common_injury_realm.dart';

@Injectable(as: DataMapper<CommonInjury, CommonInjuryRealm>)
class CommonInjuryMapper extends DataMapper<CommonInjury, CommonInjuryRealm> {
  @override
  CommonInjury toData(CommonInjuryRealm data) {
    return CommonInjury(id: data.id, name: data.name);
  }

  @override
  List<CommonInjury> toDataList(List<RealmObject> data) {
    return data.map((e) => toData(e as CommonInjuryRealm)).toList();
  }

  @override
  CommonInjuryRealm toDatabase(CommonInjury entity) {
    return CommonInjuryRealm(entity.id, entity.name);
  }

  @override
  List<CommonInjuryRealm> toDatabaseList(List<CommonInjury> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }
}
