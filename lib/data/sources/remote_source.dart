import 'dart:convert';

import 'package:flutter_clean_architecture/data/models/person/person_model.dart';
import 'package:flutter_clean_architecture/data/models/playlist/playlist_model.dart';
import 'package:flutter_clean_architecture/data/models/video/youtube_video_model.dart';
import 'package:flutter_clean_architecture/util/constants.dart';
import 'package:flutter_clean_architecture/util/exeptions.dart';
import 'package:http/http.dart' as http;

abstract class RemoteDataSource {
  Future<List<PersonModel>> getAllPersons(int page);

  Future<List<PersonModel>> searchPerson(String query);

  Future<List<PlaylistModel>> getPlaylists();

  Future<List<YouTubeVideoModel>> getVideos(String id);
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final http.Client client;
  final rmBaseUrl = 'https://rickandmortyapi.com/api/character';
  final youtubeBaseUrl = 'https://www.googleapis.com/youtube/v3/';

  RemoteDataSourceImpl({required this.client});

  @override
  Future<List<PersonModel>> getAllPersons(int page) =>
      _getFromUrl('$rmBaseUrl/?page=$page');

  @override
  Future<List<PersonModel>> searchPerson(String query) =>
      _getFromUrl('$rmBaseUrl/?name=$query');

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
            '${youtubeBaseUrl}playlists?part=snippet&channelId=UCwXdFgeE9KYzlDdR7TG9cMw&key=${Constants.youtubeApiKey}',),
        headers: {'Content-Type': 'application/json'},);
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
  Future<List<YouTubeVideoModel>> getVideos(String id) async{
    final response = await client.get(
        Uri.parse(
            '${youtubeBaseUrl}playlistItems?part=snippet&key=${Constants.youtubeApiKey}&maxResults=50&playlistId=$id',),
        headers: {'Content-Type': 'application/json'},);
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
