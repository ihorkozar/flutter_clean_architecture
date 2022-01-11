import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/data/models/playlist/playlist_model.dart';
import 'package:flutter_clean_architecture/domain/use_cases/get_playlist.dart';
import 'package:flutter_clean_architecture/util/constants.dart';
import 'package:flutter_clean_architecture/util/failure.dart';
import 'package:meta/meta.dart';

part 'playlist_state.dart';

class PlaylistCubit extends Cubit<PlaylistState> {
  final GetPlaylist getPlaylist;

  PlaylistCubit({required this.getPlaylist}) : super(PlaylistEmpty());

  int page = 1;

  void loadPlaylist() async {
    if (state is PlaylistLoading) return;

    final currentState = state;

    var oldPerson = <PlaylistModel>[];
    if (currentState is PlaylistLoaded) {
      oldPerson = currentState.playList;
    }

    emit(PlaylistLoading(oldPerson, isFirstFetch: page == 1));

    final failureOrPlaylist = await getPlaylist();

    failureOrPlaylist.fold((error) => emit(PlaylistError(message: _mapFailureToMessage(error))), (character) {
      page++;
      final playlists = (state as PlaylistLoading).oldPlayList;
      playlists.addAll(character);
      print('PlayList length: ${playlists.length.toString()}');
      emit(PlaylistLoaded(playlists));
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return Constants.serverErrorMsg;
      case CacheFailure:
        return Constants.cachedErrorMsg;
      default:
        return 'Unexpected Error';
    }
  }

}
