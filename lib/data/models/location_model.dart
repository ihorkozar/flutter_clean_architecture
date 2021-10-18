import 'package:flutter_clean_architecture/domain/entities/person_entity.dart';

class LocationModel extends LocationEntity{
  LocationModel({name, url}) : super(name: name, url: url);

  //use json_serializable or something else in the future
  factory LocationModel.fromJson(Map<String, dynamic> json){
    return LocationModel(
        name: json['name'],
        url: json['url'],
    );
  }

  Map<String, dynamic> toJson(){
    return{
      'name': name,
      'url': url,
    };
  }
}