import 'package:flutter_clean_architecture/data/models/playlist/snippet_model.dart';
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