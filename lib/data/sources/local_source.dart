import 'dart:convert';
import 'package:flutter_clean_architecture/data/models/person_model.dart';
import 'package:flutter_clean_architecture/util/exeptions.dart';
import 'package:shared_preferences/shared_preferences.dart';

const cacheKey = 'cache_key';

abstract class PersonLocalDataSource {
  Future<List<PersonModel>> getPersonsFromCache();
  Future<void> personsToCache(List<PersonModel> persons);
}

class PersonLocalDataSourceImpl extends PersonLocalDataSource {
  final SharedPreferences sharedPref;

  PersonLocalDataSourceImpl({required this.sharedPref});

  @override
  Future<List<PersonModel>> getPersonsFromCache() {
    final jsonCacheList = sharedPref.getStringList(cacheKey);
    if (jsonCacheList != null && jsonCacheList.isNotEmpty){
      return Future.value(jsonCacheList
          .map((e) => PersonModel.fromJson(json.decode(e)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> personsToCache(List<PersonModel> persons) {
    final List<String> jsonCacheList =
        persons.map((e) => json.encode(e.toJson())).toList();

    sharedPref.setStringList(cacheKey, jsonCacheList);
    return Future.value(jsonCacheList);
  }
}
