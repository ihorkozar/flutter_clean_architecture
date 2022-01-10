import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/custom_drawer.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/playlist.dart';

class SongsPage extends StatelessWidget {
  const SongsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Overview'),
        centerTitle: true,
      ),
      drawer: const CustomDrawer(),
      body: PlayList(),
    );
  }
}