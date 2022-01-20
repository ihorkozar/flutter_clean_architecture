// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaylistModel _$$_PlaylistModelFromJson(Map<String, dynamic> json) =>
    _$_PlaylistModel(
      id: json['id'] as String,
      snippet: SnippetModel.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlaylistModelToJson(_$_PlaylistModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'snippet': instance.snippet,
    };

_$_SnippetModel _$$_SnippetModelFromJson(Map<String, dynamic> json) =>
    _$_SnippetModel(
      title: json['title'] as String,
      description: json['description'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      thumbnails:
          Thumbnails.fromJson(json['thumbnails'] as Map<String, dynamic>),
      localized: Localized.fromJson(json['localized'] as Map<String, dynamic>),
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$_SnippetModelToJson(_$_SnippetModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'thumbnails': instance.thumbnails,
      'localized': instance.localized,
      'country': instance.country,
    };

_$_Localized _$$_LocalizedFromJson(Map<String, dynamic> json) => _$_Localized(
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_LocalizedToJson(_$_Localized instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };

_$_Thumbnails _$$_ThumbnailsFromJson(Map<String, dynamic> json) =>
    _$_Thumbnails(
      thumbnailsDefault: json['thumbnailsDefault'] == null
          ? null
          : Default.fromJson(json['thumbnailsDefault'] as Map<String, dynamic>),
      medium: json['medium'] == null
          ? null
          : Default.fromJson(json['medium'] as Map<String, dynamic>),
      high: json['high'] == null
          ? null
          : Default.fromJson(json['high'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ThumbnailsToJson(_$_Thumbnails instance) =>
    <String, dynamic>{
      'thumbnailsDefault': instance.thumbnailsDefault,
      'medium': instance.medium,
      'high': instance.high,
    };

_$_Default _$$_DefaultFromJson(Map<String, dynamic> json) => _$_Default(
      url: json['url'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
    );

Map<String, dynamic> _$$_DefaultToJson(_$_Default instance) =>
    <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
