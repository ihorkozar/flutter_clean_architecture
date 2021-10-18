import 'dart:convert';
import 'package:flutter_clean_architecture/data/models/person_model.dart';
import 'package:flutter_clean_architecture/util/exeptions.dart';
import 'package:http/http.dart' as http;

abstract class PersonRemoteDataSource {
  Future<List<PersonModel>> getAllPersons(int page);

  Future<List<PersonModel>> searchPerson(String query);
}

class PersonRemoteDataSourceImpl extends PersonRemoteDataSource {
  final http.Client client;
  final baseUrl = 'https://rickandmortyapi.com/api/character';

  PersonRemoteDataSourceImpl({required this.client});

  @override
  Future<List<PersonModel>> getAllPersons(int page) =>
      _getFromUrl('$baseUrl/?page=$page');

  @override
  Future<List<PersonModel>> searchPerson(String query) =>
      _getFromUrl('$baseUrl/?name=$query');

  Future<List<PersonModel>> _getFromUrl(String url) async {
    final response = await client
        .get(Uri.parse(url), headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final listPerson = json.decode(response.body);
      return (listPerson['results'] as List)
          .map((e) => PersonModel.fromJson(e))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
