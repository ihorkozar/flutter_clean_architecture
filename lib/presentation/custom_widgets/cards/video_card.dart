import 'package:flutter/material.dart'
;
import 'package:flutter_clean_architecture/data/models/video/youtube_video_model.dart';

import 'cache_image.dart';
class VideoCard extends StatelessWidget {
  const VideoCard({
    Key? key,
    required this.videos,
    required this.index,
  }) : super(key: key);

  final List<YouTubeVideoModel> videos;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      elevation: 2.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: PersonCacheImage(
              imageUrl: videos[index].snippet.thumbnails.high!.url,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              videos[index].snippet.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              videos[index].snippet.resourceId.videoId,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}