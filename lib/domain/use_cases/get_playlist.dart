import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/models/playlist/playlist_model.dart';
import 'package:flutter_clean_architecture/domain/repository/playlist_repository.dart';
import 'package:flutter_clean_architecture/domain/use_cases/usecase.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

class GetPlaylist extends VideoUseCase<List<PlaylistModel>> {
  final PlaylistRepository repository;

  GetPlaylist(this.repository);

  @override
  Future<Either<Failure, List<PlaylistModel>>> call() async {
    return await repository.getPlaylist();
  }
}

