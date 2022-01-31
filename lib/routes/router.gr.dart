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
import '../presentation/screens/auth_screen.dart' as _i7;
import '../presentation/screens/playlists_screen.dart' as _i4;
import '../presentation/screens/rm/detail_screen.dart' as _i3;
import '../presentation/screens/rm/overview_screen.dart' as _i2;
import '../presentation/screens/splash_screen.dart' as _i1;
import '../presentation/screens/videos_screen.dart' as _i5;
import '../samples/video_sample.dart' as _i6;

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
    PersonDetailScreen.name: (routeData) {
      final args = routeData.argsAs<PersonDetailScreenArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PersonDetailScreen(key: args.key, person: args.person));
    },
    PlaylistsScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PlaylistsScreen());
    },
    VideosScreen.name: (routeData) {
      final args = routeData.argsAs<VideosScreenArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.VideosScreen(key: args.key, playlist: args.playlist));
    },
    VideoSample.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.VideoSample());
    },
    AuthScreen.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AuthScreen());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: 'splash', fullMatch: true),
        _i8.RouteConfig(SplashScreen.name, path: 'splash'),
        _i8.RouteConfig(OverviewScreen.name, path: 'overview'),
        _i8.RouteConfig(PersonDetailScreen.name, path: 'detail'),
        _i8.RouteConfig(PlaylistsScreen.name, path: 'playlists'),
        _i8.RouteConfig(VideosScreen.name, path: 'videos'),
        _i8.RouteConfig(VideoSample.name, path: 'sample'),
        _i8.RouteConfig(AuthScreen.name, path: 'auth')
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
/// [_i3.PersonDetailScreen]
class PersonDetailScreen extends _i8.PageRouteInfo<PersonDetailScreenArgs> {
  PersonDetailScreen({_i9.Key? key, required _i10.PersonModel person})
      : super(PersonDetailScreen.name,
            path: 'detail',
            args: PersonDetailScreenArgs(key: key, person: person));

  static const String name = 'PersonDetailScreen';
}

class PersonDetailScreenArgs {
  const PersonDetailScreenArgs({this.key, required this.person});

  final _i9.Key? key;

  final _i10.PersonModel person;

  @override
  String toString() {
    return 'PersonDetailScreenArgs{key: $key, person: $person}';
  }
}

/// generated route for
/// [_i4.PlaylistsScreen]
class PlaylistsScreen extends _i8.PageRouteInfo<void> {
  const PlaylistsScreen() : super(PlaylistsScreen.name, path: 'playlists');

  static const String name = 'PlaylistsScreen';
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
/// [_i6.VideoSample]
class VideoSample extends _i8.PageRouteInfo<void> {
  const VideoSample() : super(VideoSample.name, path: 'sample');

  static const String name = 'VideoSample';
}

/// generated route for
/// [_i7.AuthScreen]
class AuthScreen extends _i8.PageRouteInfo<void> {
  const AuthScreen() : super(AuthScreen.name, path: 'auth');

  static const String name = 'AuthScreen';
}
