import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/models/person/person_model.dart';
import 'package:flutter_clean_architecture/data/models/video/playlist_model.dart';
import 'package:flutter_clean_architecture/data/models/video/video_model.dart';
import 'package:flutter_clean_architecture/data/sources/local_source.dart';
import 'package:flutter_clean_architecture/data/sources/remote_source.dart';
import 'package:flutter_clean_architecture/domain/repository/person_repository.dart';
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
    try {
      final remotePerson = await remoteDataSource.getPlaylists();
      return Right(remotePerson);
    } on ServerException {
      return Left(ServerFailure());
    }
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
  Future<Either<Failure, List<VideoModel>>> getVideos() async{
    if (await connectionInfo.isConnected) {
      try {
        final remotePerson = await remoteDataSource.getVideos();
        return Right(remotePerson);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}
