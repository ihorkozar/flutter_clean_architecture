import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';

part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel{
  const factory VideoModel({
    required String id,
    required String title,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);
}