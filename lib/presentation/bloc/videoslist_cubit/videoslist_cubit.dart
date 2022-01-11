import 'package:bloc/bloc.dart';
import 'package:flutter_clean_architecture/data/models/video/youtube_video_model.dart';
import 'package:flutter_clean_architecture/domain/use_cases/get_playlist.dart';
import 'package:flutter_clean_architecture/domain/use_cases/get_videolist.dart';
import 'package:flutter_clean_architecture/presentation/bloc/videoslist_cubit/videoslist_state.dart';
import 'package:flutter_clean_architecture/util/constants.dart';
import 'package:flutter_clean_architecture/util/failure.dart';


class VideoListCubit extends Cubit<VideoListState> {
  final GetVideoList getVideos;

  VideoListCubit({required this.getVideos}) : super(VideoListEmpty());

  int page = 1;

  void loadVideoList(String playlistId) async {
    if (state is VideoListLoading) return;

    final currentState = state;

    var oldVideos = <YouTubeVideoModel>[];
    if (currentState is VideoListLoaded) {
      oldVideos = currentState.videoList;
    }

    emit(VideoListLoading(oldVideos, isFirstFetch: page == 1));

    final failureOrPlaylist = await getVideos.getVideos(playlistId);

    failureOrPlaylist.fold((error) => emit(VideoListError(message: _mapFailureToMessage(error))), (character) {
      page++;
      final playlists = (state as VideoListLoading).oldVideoList;
      playlists.addAll(character);
      print('PlayList length: ${playlists.length.toString()}');
      emit(VideoListLoaded(playlists));
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
