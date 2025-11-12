import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_injury.freezed.dart';

@freezed
sealed class CommonInjury with _$CommonInjury {
  const factory CommonInjury({required String id, required String name}) = _CommonInjury;
}
