import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'youtube_video_model.freezed.dart';

part 'youtube_video_model.g.dart';

// @freezed
// class YouTubeVideoModel with _$YouTubeVideoModel {
//   const factory YouTubeVideoModel({
//     required String kind,
//     required String etag,
//     //required List<Item> items,
//   }) = _YouTubeVideoModel;
//
//   factory YouTubeVideoModel.fromJson(Map<String, dynamic> json) =>
//       _$YouTubeVideoModelFromJson(json);
// }

@freezed
class YouTubeVideoModel with _$YouTubeVideoModel {
  const factory YouTubeVideoModel({
    required String kind,
    required String etag,
    required String id,
    required Snippet snippet,
  }) = _YouTubeVideoModel;

  factory YouTubeVideoModel.fromJson(Map<String, dynamic> json) => _$YouTubeVideoModelFromJson(json);
}


@freezed
class Snippet with _$Snippet {
  const factory Snippet({
    required DateTime publishedAt,
    required String channelId,
    required String title,
    required String description,
    required Thumbnails thumbnails,
    required String channelTitle,
    required String playlistId,
    required ResourceId resourceId,
  }) = _Snippet;

  factory Snippet.fromJson(Map<String, dynamic> json) =>
      _$SnippetFromJson(json);
}

@freezed
class ResourceId with _$ResourceId {
  const factory ResourceId({
    required String kind,
    required String videoId,
  }) = _ResourceId;

  factory ResourceId.fromJson(Map<String, dynamic> json) =>
      _$ResourceIdFromJson(json);
}

@freezed
class Thumbnails with _$Thumbnails {
  const factory Thumbnails({
    Default? thumbnailsDefault,
    Default? medium,
    Default? high,
    Default? standard,
    Default? maxres,
  }) = _Thumbnails;

  factory Thumbnails.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailsFromJson(json);
}

@freezed
class Default with _$Default {
  const factory Default({
    required String url,
    required int width,
    required int height,
  }) = _Default;

  factory Default.fromJson(Map<String, dynamic> json) =>
      _$DefaultFromJson(json);
}