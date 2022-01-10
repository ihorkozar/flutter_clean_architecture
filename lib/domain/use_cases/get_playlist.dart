import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/data/models/video/playlist_model.dart';
import 'package:flutter_clean_architecture/domain/repository/playlist_repository.dart';
import 'package:flutter_clean_architecture/domain/use_cases/usecase.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

class GetPlaylist extends UseCase<List<PlaylistModel>, PageParams> {
  final PlaylistRepository repository;

  GetPlaylist(this.repository);

  @override
  Future<Either<Failure, List<PlaylistModel>>> call(PageParams params) async {
    return await repository.getPlaylist();
  }
}

class PageParams extends Equatable{
  final int page;

  const PageParams({required this.page});

  @override
  List<Object?> get props => [page];
}

