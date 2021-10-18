import 'package:flutter_clean_architecture/data/models/location_model.dart';
import 'package:flutter_clean_architecture/domain/entities/person_entity.dart';

class PersonModel extends PersonEntity {
  const PersonModel(
      {required id,
      required name,
      required status,
      required species,
      required type,
      required gender,
      required origin,
      required location,
      required img,
      required episode,
      required created})
      : super(
          id: id,
          name: name,
          status: status,
          species: species,
          type: type,
          gender: gender,
          origin: origin,
          location: location,
          img: img,
          episode: episode,
          created: created,
        );

  //use json_serializable or something else in the future
  factory PersonModel.fromJson(Map<String, dynamic> json) {
    return PersonModel(
        id: json['id'],
        name: json['name'],
        status: json['status'],
        species: json['species'],
        type: json['type'],
        gender: json['gender'],
        origin: json['origin'] != null
            ? LocationModel.fromJson(json['origin'])
            : null,
        location: json['location'] != null
            ? LocationModel.fromJson(json['origin'])
            : null,
        img: json['img'],
        episode:
            (json['episode'] as List<dynamic>).map((e) => e as String).toList(),
        created: DateTime.parse(json['created'] as String));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'status': status,
      'species': species,
      'type': type,
      'gender': gender,
      'origin': origin,
      'location': location,
      'img': img,
      'episode': episode,
      'created': created.toIso8601String(),
    };
  }
}
