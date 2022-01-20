import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_model.freezed.dart';

part 'playlist_model.g.dart';

@freezed
class PlaylistModel with _$PlaylistModel{
  const factory PlaylistModel({
    required String id,
    required SnippetModel snippet,
  }) = _PlaylistModel;

  factory PlaylistModel.fromJson(Map<String, dynamic> json) => _$PlaylistModelFromJson(json);
}

@freezed
class SnippetModel with _$SnippetModel {
  const factory SnippetModel({
    required String title,
    required String description,
    required DateTime publishedAt,
    required Thumbnails thumbnails,
    required Localized localized,
    String? country,
  }) = _SnippetModel;

  factory SnippetModel.fromJson(Map<String, dynamic> json) =>
      _$SnippetModelFromJson(json);
}

@freezed
class Localized with _$Localized {
  const factory Localized({
    required String title,
    required String description,
  }) = _Localized;

  factory Localized.fromJson(Map<String, dynamic> json) =>
      _$LocalizedFromJson(json);
}

@freezed
class Thumbnails with _$Thumbnails {
  const factory Thumbnails({
    Default? thumbnailsDefault,
    Default? medium,
    Default? high,
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