import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architecture/data/models/video/youtube_video_model.dart';

@immutable
abstract class VideoListState extends Equatable{
  const VideoListState();

  @override
  List<Object> get props => [];
}

class VideoListEmpty extends VideoListState {
  @override
  List<Object> get props => [];
}

class VideoListLoading extends VideoListState {
  final List<YouTubeVideoModel> oldVideoList;
  final bool isFirstFetch;

  const VideoListLoading(this.oldVideoList, {this.isFirstFetch = false});

  @override
  List<Object> get props => [oldVideoList];
}

class VideoListLoaded extends VideoListState {
  final List<YouTubeVideoModel> videoList;

  const VideoListLoaded(this.videoList);

  @override
  List<Object> get props => [videoList];
}

class VideoListError extends VideoListState {
  final String message;

  const VideoListError({required this.message});

  @override
  List<Object> get props => [message];
}
