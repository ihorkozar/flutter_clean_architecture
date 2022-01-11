import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/models/playlist/playlist_model.dart';
import 'package:flutter_clean_architecture/data/models/video/youtube_video_model.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

abstract class PlaylistRepository{
  Future<Either<Failure, List<PlaylistModel>>> getPlaylist();
  Future<Either<Failure, List<YouTubeVideoModel>>> getVideos(String playlistId);
}