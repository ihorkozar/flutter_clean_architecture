// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../data/models/person/person_model.dart' as _i10;
import '../data/models/playlist/playlist_model.dart' as _i11;
import '../presentation/custom_widgets/video_view.dart' as _i7;
import '../presentation/screens/auth_screen.dart' as _i6;
import '../presentation/screens/playlists_screen.dart' as _i4;
import '../presentation/screens/rm/detail_screen.dart' as _i3;
import '../presentation/screens/rm/overview_screen.dart' as _i2;
import '../presentation/screens/splash_screen.dart' as _i1;
import '../presentation/screens/videos_screen.dart' as _i5;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    OverviewScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.OverviewScreen());
    },
    PersonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PersonDetailRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PersonDetailPage(key: args.key, person: args.person));
    },
    PlaylistsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PlaylistsPage());
    },
    VideosScreen.name: (routeData) {
      final args = routeData.argsAs<VideosScreenArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.VideosScreen(key: args.key, playlist: args.playlist));
    },
    AuthScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.AuthScreen());
    },
    VideoView.name: (routeData) {
      final args = routeData.argsAs<VideoViewArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.VideoView(key: args.key, videoIdList: args.videoIdList));
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: 'splash', fullMatch: true),
        _i8.RouteConfig(SplashScreen.name, path: 'splash'),
        _i8.RouteConfig(OverviewScreen.name, path: 'overview'),
        _i8.RouteConfig(PersonDetailRoute.name, path: 'detail'),
        _i8.RouteConfig(PlaylistsRoute.name, path: 'playlists'),
        _i8.RouteConfig(VideosScreen.name, path: 'videos'),
        _i8.RouteConfig(AuthScreen.name, path: 'sample'),
        _i8.RouteConfig(VideoView.name, path: 'videoDetail')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i8.PageRouteInfo<void> {
  const SplashScreen() : super(SplashScreen.name, path: 'splash');

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.OverviewScreen]
class OverviewScreen extends _i8.PageRouteInfo<void> {
  const OverviewScreen() : super(OverviewScreen.name, path: 'overview');

  static const String name = 'OverviewScreen';
}

/// generated route for
/// [_i3.PersonDetailPage]
class PersonDetailRoute extends _i8.PageRouteInfo<PersonDetailRouteArgs> {
  PersonDetailRoute({_i9.Key? key, required _i10.PersonModel person})
      : super(PersonDetailRoute.name,
            path: 'detail',
            args: PersonDetailRouteArgs(key: key, person: person));

  static const String name = 'PersonDetailRoute';
}

class PersonDetailRouteArgs {
  const PersonDetailRouteArgs({this.key, required this.person});

  final _i9.Key? key;

  final _i10.PersonModel person;

  @override
  String toString() {
    return 'PersonDetailRouteArgs{key: $key, person: $person}';
  }
}

/// generated route for
/// [_i4.PlaylistsPage]
class PlaylistsRoute extends _i8.PageRouteInfo<void> {
  const PlaylistsRoute() : super(PlaylistsRoute.name, path: 'playlists');

  static const String name = 'PlaylistsRoute';
}

/// generated route for
/// [_i5.VideosScreen]
class VideosScreen extends _i8.PageRouteInfo<VideosScreenArgs> {
  VideosScreen({_i9.Key? key, required _i11.PlaylistModel playlist})
      : super(VideosScreen.name,
            path: 'videos',
            args: VideosScreenArgs(key: key, playlist: playlist));

  static const String name = 'VideosScreen';
}

class VideosScreenArgs {
  const VideosScreenArgs({this.key, required this.playlist});

  final _i9.Key? key;

  final _i11.PlaylistModel playlist;

  @override
  String toString() {
    return 'VideosScreenArgs{key: $key, playlist: $playlist}';
  }
}

/// generated route for
/// [_i6.AuthScreen]
class AuthScreen extends _i8.PageRouteInfo<void> {
  const AuthScreen() : super(AuthScreen.name, path: 'sample');

  static const String name = 'AuthScreen';
}

/// generated route for
/// [_i7.VideoView]
class VideoView extends _i8.PageRouteInfo<VideoViewArgs> {
  VideoView({_i9.Key? key, required List<String> videoIdList})
      : super(VideoView.name,
            path: 'videoDetail',
            args: VideoViewArgs(key: key, videoIdList: videoIdList));

  static const String name = 'VideoView';
}

class VideoViewArgs {
  const VideoViewArgs({this.key, required this.videoIdList});

  final _i9.Key? key;

  final List<String> videoIdList;

  @override
  String toString() {
    return 'VideoViewArgs{key: $key, videoIdList: $videoIdList}';
  }
}
