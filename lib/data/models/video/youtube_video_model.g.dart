// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'youtube_video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_YouTubeVideoModel _$$_YouTubeVideoModelFromJson(Map<String, dynamic> json) =>
    _$_YouTubeVideoModel(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_YouTubeVideoModelToJson(
        _$_YouTubeVideoModel instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };

_$_Item _$$_ItemFromJson(Map<String, dynamic> json) => _$_Item(
      kind: json['kind'] as String,
      etag: json['etag'] as String,
      id: json['id'] as String,
      snippet: Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ItemToJson(_$_Item instance) => <String, dynamic>{
      'kind': instance.kind,
      'etag': instance.etag,
      'id': instance.id,
      'snippet': instance.snippet,
    };

_$_Snippet _$$_SnippetFromJson(Map<String, dynamic> json) => _$_Snippet(
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      channelId: json['channelId'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      channelTitle: json['channelTitle'] as String,
      playlistId: json['playlistId'] as String,
      resourceId:
          ResourceId.fromJson(json['resourceId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SnippetToJson(_$_Snippet instance) =>
    <String, dynamic>{
      'publishedAt': instance.publishedAt.toIso8601String(),
      'channelId': instance.channelId,
      'title': instance.title,
      'description': instance.description,
      'channelTitle': instance.channelTitle,
      'playlistId': instance.playlistId,
      'resourceId': instance.resourceId,
    };

_$_ResourceId _$$_ResourceIdFromJson(Map<String, dynamic> json) =>
    _$_ResourceId(
      kind: json['kind'] as String,
      videoId: json['videoId'] as String,
    );

Map<String, dynamic> _$$_ResourceIdToJson(_$_ResourceId instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'videoId': instance.videoId,
    };
