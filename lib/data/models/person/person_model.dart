import 'package:flutter_clean_architecture/data/models/location/location_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_model.freezed.dart';

part 'person_model.g.dart';

@freezed
class PersonModel with _$PersonModel {
  const factory PersonModel({
    required int id,
    required String name,
    required String status,
    required String species,
    required String type,
    required String gender,
    required LocationModel origin,
    required LocationModel location,
    required String image,
    required List<String> episode,
    required DateTime created,
  }) = _PersonModel;

  factory PersonModel.fromJson(Map<String, dynamic> json) =>
      _$PersonModelFromJson(json);
}
