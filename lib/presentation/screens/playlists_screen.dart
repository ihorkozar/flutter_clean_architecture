import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/custom_drawer.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/lists/playlist.dart';

class PlaylistsPage extends StatelessWidget {
  const PlaylistsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playlists'),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: PlayList(),
    );
  }
}