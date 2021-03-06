import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/models/playlist/playlist_model.dart';
import 'package:flutter_clean_architecture/data/models/video/youtube_video_model.dart';
import 'package:flutter_clean_architecture/data/sources/remote_source.dart';
import 'package:flutter_clean_architecture/domain/repository/playlist_repository.dart';
import 'package:flutter_clean_architecture/util/connection_info.dart';
import 'package:flutter_clean_architecture/util/exeptions.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

class PlaylistRepositoryImpl implements PlaylistRepository {
  final RemoteDataSource remoteDataSource;
  final ConnectionInfo connectionInfo;

  PlaylistRepositoryImpl({
    required this.remoteDataSource,
    required this.connectionInfo,
  });

  @override
  Future<Either<Failure, List<PlaylistModel>>> getPlaylist() async{
    if (await connectionInfo.isConnected) {
      try {
        final remotePerson = await remoteDataSource.getPlaylists();
        return Right(remotePerson);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<YouTubeVideoModel>>> getVideos(String playlistId) async{
    if (await connectionInfo.isConnected) {
      try {
        final remotePerson = await remoteDataSource.getVideos(playlistId);
        return Right(remotePerson);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
