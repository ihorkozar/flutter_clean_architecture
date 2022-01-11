import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/data/models/playlist/playlist_model.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/lists/youtube_video_list.dart';

class VideosScreen extends StatefulWidget {
  final PlaylistModel playlist;

  const VideosScreen({
    Key? key,
    required this.playlist,
  }):super(key: key);

  @override
  _VideosScreenState createState() => _VideosScreenState();
}

class _VideosScreenState extends State<VideosScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.playlist.snippet.title),
      ),
      body: SafeArea(
        child: YouTubeVideoList(playListId: widget.playlist.id,),
      ),
    );
  }
}