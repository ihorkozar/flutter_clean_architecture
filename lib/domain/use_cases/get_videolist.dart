import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/models/video/youtube_video_model.dart';
import 'package:flutter_clean_architecture/domain/repository/playlist_repository.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

class GetVideoList {
  final PlaylistRepository repository;

  GetVideoList(this.repository);

  Future<Either<Failure, List<YouTubeVideoModel>>> getVideos(String playlistId) async {
    return await repository.getVideos(playlistId);
  }
}

