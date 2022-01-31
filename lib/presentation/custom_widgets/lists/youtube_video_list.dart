import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/data/models/video/youtube_video_model.dart';
import 'package:flutter_clean_architecture/presentation/bloc/videoslist_cubit/videoslist_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/videoslist_cubit/videoslist_state.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/video_view.dart';

class YouTubeVideoList extends StatelessWidget {
  final scrollController = ScrollController();
  final int page = -1;
  final String playListId;

  YouTubeVideoList({required this.playListId, Key? key}) : super(key: key);

  void setupScrollController(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          context.read<VideoListCubit>().loadVideoList(playListId);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);

    return BlocBuilder<VideoListCubit, VideoListState>(
        builder: (context, state) {
          List<YouTubeVideoModel> videos = [];
          List<String> videoIdList = [];

          if (state is VideoListLoading && state.isFirstFetch) {
            return _loadingIndicator();
          } else if (state is VideoListLoading) {
            videos = state.oldVideoList;
          } else if (state is VideoListLoaded) {
            videos = state.videoList;
          } else if (state is VideoListError) {
            return Center(
              child: Text(
                state.message,
                style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            );
          }

          for (var element in videos) {
            videoIdList.add(element.snippet.resourceId.videoId);
          }

          return VideoView(videoIdList: videoIdList);
        },);
  }

  Widget _loadingIndicator() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
