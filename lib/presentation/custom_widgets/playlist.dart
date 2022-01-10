import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/data/models/video/playlist_model.dart';
import 'package:flutter_clean_architecture/presentation/bloc/playlist_cubit/playlist_cubit.dart';
import 'cache_image.dart';

class PlayList extends StatelessWidget {
  final scrollController = ScrollController();
  final int page = -1;

  PlayList({Key? key}) : super(key: key);

  void setupScrollController(BuildContext context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          context.read<PlaylistCubit>().loadPlaylist();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    setupScrollController(context);

    return BlocBuilder<PlaylistCubit, PlaylistState>(builder: (context, state) {
      List<PlaylistModel> playlists = [];
      bool isLoading = false;

      if (state is PlaylistLoading && state.isFirstFetch) {
        return _loadingIndicator();
      } else if (state is PlaylistLoading) {
        playlists = state.oldPlayList;
        isLoading = true;
      } else if (state is PlaylistLoaded) {
        playlists = state.playList;
      } else if (state is PlaylistError) {
        return Center(
          child: Text(
            state.message,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        );
      }
      return ListView.separated(controller: scrollController,
        itemBuilder: (context, index) {
          if (index < playlists.length) {
            return PersonCacheImage(imageUrl: playlists[index].image ?? '',);
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
            color: Colors.grey[400],
          );
        },
        itemCount: playlists.length + (isLoading ? 1 : 0),);
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