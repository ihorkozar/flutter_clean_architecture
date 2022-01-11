import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/data/models/playlist/playlist_model.dart';
import 'package:flutter_clean_architecture/data/models/video/youtube_video_model.dart';
import 'package:flutter_clean_architecture/presentation/bloc/playlist_cubit/playlist_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/videoslist_cubit/videoslist_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/videoslist_cubit/videoslist_state.dart';
import '../cards/cache_image.dart';

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

    return BlocBuilder<VideoListCubit, VideoListState>(builder: (context, state) {
      List<YouTubeVideoModel> videos = [];
      bool isLoading = false;

      if (state is VideoListLoading && state.isFirstFetch) {
        return _loadingIndicator();
      } else if (state is VideoListLoading) {
        videos = state.oldVideoList;
        isLoading = true;
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
      return ListView.separated(
        controller: scrollController,
        itemBuilder: (context, index) {
          if (index < videos.length) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Text(videos[index].items.first?.id ?? 'error'),
            );
          } else {
            Timer(const Duration(milliseconds: 30), () {
              scrollController
                  .jumpTo(scrollController.position.maxScrollExtent);
            });
            return _loadingIndicator();
          }
        },
        separatorBuilder: (context, index) {
          return Divider(
            endIndent: 8,
            indent: 8,
            color: Colors.grey[400],
          );
        },
        itemCount: videos.length + (isLoading ? 1 : 0),
      );
    });
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