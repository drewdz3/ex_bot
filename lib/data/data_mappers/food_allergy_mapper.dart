import 'package:ex_bot/data/data_mappers/data_mapper.dart';
import 'package:ex_bot/data/models/food_allergy.dart';
import 'package:ex_bot/data/realm_models/food_allergy_realm.dart';
import 'package:injectable/injectable.dart';
import 'package:realm_dart/src/realm_object.dart';

@Injectable(as: DataMapper<FoodAllergy, FoodAllergyRealm>)
class FoodAllergyMapper extends DataMapper<FoodAllergy, FoodAllergyRealm> {
  @override
  FoodAllergy toData(FoodAllergyRealm data) {
    return FoodAllergy(id: data.id, name: data.name);
  }

  @override
  List<FoodAllergy> toDataList(List<RealmObject> data) {
    return data.map((e) => toData(e as FoodAllergyRealm)).toList();
  }

  @override
  FoodAllergyRealm toDatabase(FoodAllergy entity) {
    return FoodAllergyRealm(entity.id, entity.name);
  }

  @override
  List<FoodAllergyRealm> toDatabaseList(List<FoodAllergy> entities) {
    return entities.map((e) => toDatabase(e)).toList();
  }
}
