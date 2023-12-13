import 'dart:convert';

import 'package:flutter_clean_architecture/data/models/person/person_model.dart';
import 'package:flutter_clean_architecture/data/models/playlist/playlist_model.dart';
import 'package:flutter_clean_architecture/data/models/video/youtube_video_model.dart';
import 'package:flutter_clean_architecture/util/constants.dart';
import 'package:flutter_clean_architecture/util/exeptions.dart';
import 'package:flutter_clean_architecture/util/gql_query.dart';
import 'package:graphql_flutter/graphql_flutter.dart' hide ServerException;
import 'package:http/http.dart' as http;

abstract class RemoteDataSource {
  Future<List<PersonModel>> getAllPersons(int page);

  Future<List<PersonModel>> searchPerson(String name);

  Future<List<PlaylistModel>> getPlaylists();

  Future<List<YouTubeVideoModel>> getVideos(String id);
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final http.Client client;
  final GraphQLClient gClient;

  final youtubeBaseUrl = 'https://www.googleapis.com/youtube/v3/';
  final rmBaseUrl = 'https://rickandmortyapi.com/api/character';

  RemoteDataSourceImpl({required this.client, required this.gClient});

  @override
  Future<List<PersonModel>> getAllPersons(int page) async {
    //return _getFromUrl('$rmBaseUrl/?page=$page');
    try {
      final result = await gClient.query(QueryOptions(
        document: gql(GqlQuery.charactersQuery),
        variables: {"page": page},
      ));
      if (result.data == null) {
        return [];
      }
      return result.data?['characters']['results']
          .map((e) => PersonModel.fromJson(e))
          .cast<PersonModel>()
          .toList();
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
  }

  @override
  Future<List<PersonModel>> searchPerson(String name) async {
    try {
      final result = await gClient.query(QueryOptions(
        document: gql(GqlQuery.searchQuery),
        variables: {"name": name},
      ));
      if (result.data == null) {
        return [];
      }
      return result.data?['characters']['results']
          .map((e) => PersonModel.fromJson(e))
          .cast<PersonModel>()
          .toList();
    } on Exception catch (exception) {
      print(exception);
      throw ServerException();
    }
    return _getFromUrl('$rmBaseUrl/?name=$name');
  }

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

  @override
  Future<List<PlaylistModel>> getPlaylists() async {
    final response = await client.get(
        Uri.parse(
            '${youtubeBaseUrl}playlists?part=snippet&channelId=UCwXdFgeE9KYzlDdR7TG9cMw&key=${Constants.youtubeApiKey}'),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      print(jsonResponse);
      return (jsonResponse['items'] as List)
          .map((e) => PlaylistModel.fromJson(e))
          .toList();
    } else {
      print(response.statusCode);
      throw ServerException();
    }
  }

  @override
  Future<List<YouTubeVideoModel>> getVideos(String id) async {
    final response = await client.get(
        Uri.parse(
            '${youtubeBaseUrl}playlistItems?part=snippet&key=${Constants.youtubeApiKey}&maxResults=50&playlistId=$id'),
        headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      print(jsonResponse);
      return (jsonResponse['items'] as List)
          .map((e) => YouTubeVideoModel.fromJson(e))
          .toList();
    } else {
      print(response.statusCode);
      throw ServerException();
    }
  }
}
