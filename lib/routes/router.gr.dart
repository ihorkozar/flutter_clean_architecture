// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../data/models/person/person_model.dart' as _i9;
import '../data/models/playlist/playlist_model.dart' as _i10;
import '../presentation/custom_widgets/search_result.dart' as _i4;
import '../presentation/screens/detail_screen.dart' as _i3;
import '../presentation/screens/overview_screen.dart' as _i2;
import '../presentation/screens/playlists_screen.dart' as _i5;
import '../presentation/screens/splash_screen.dart' as _i1;
import '../presentation/screens/video_screen.dart' as _i6;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    HomeRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    PersonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PersonDetailRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PersonDetailPage(key: args.key, person: args.person));
    },
    SearchResult.name: (routeData) {
      final args = routeData.argsAs<SearchResultArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i4.SearchResult(key: args.key, personResult: args.personResult));
    },
    PlaylistsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PlaylistsPage());
    },
    VideosScreen.name: (routeData) {
      final args = routeData.argsAs<VideosScreenArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.VideosScreen(key: args.key, playlist: args.playlist));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig('/#redirect',
            path: '/', redirectTo: 'splash', fullMatch: true),
        _i7.RouteConfig(SplashScreen.name, path: 'splash'),
        _i7.RouteConfig(HomeRoute.name, path: 'home'),
        _i7.RouteConfig(PersonDetailRoute.name, path: 'detail'),
        _i7.RouteConfig(SearchResult.name, path: 'search'),
        _i7.RouteConfig(PlaylistsRoute.name, path: 'playlists'),
        _i7.RouteConfig(VideosScreen.name, path: 'videos')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i7.PageRouteInfo<void> {
  const SplashScreen() : super(SplashScreen.name, path: 'splash');

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.PersonDetailPage]
class PersonDetailRoute extends _i7.PageRouteInfo<PersonDetailRouteArgs> {
  PersonDetailRoute({_i8.Key? key, required _i9.PersonModel person})
      : super(PersonDetailRoute.name,
            path: 'detail',
            args: PersonDetailRouteArgs(key: key, person: person));

  static const String name = 'PersonDetailRoute';
}

class PersonDetailRouteArgs {
  const PersonDetailRouteArgs({this.key, required this.person});

  final _i8.Key? key;

  final _i9.PersonModel person;

  @override
  String toString() {
    return 'PersonDetailRouteArgs{key: $key, person: $person}';
  }
}

/// generated route for
/// [_i4.SearchResult]
class SearchResult extends _i7.PageRouteInfo<SearchResultArgs> {
  SearchResult({_i8.Key? key, required _i9.PersonModel personResult})
      : super(SearchResult.name,
            path: 'search',
            args: SearchResultArgs(key: key, personResult: personResult));

  static const String name = 'SearchResult';
}

class SearchResultArgs {
  const SearchResultArgs({this.key, required this.personResult});

  final _i8.Key? key;

  final _i9.PersonModel personResult;

  @override
  String toString() {
    return 'SearchResultArgs{key: $key, personResult: $personResult}';
  }
}

/// generated route for
/// [_i5.PlaylistsPage]
class PlaylistsRoute extends _i7.PageRouteInfo<void> {
  const PlaylistsRoute() : super(PlaylistsRoute.name, path: 'playlists');

  static const String name = 'PlaylistsRoute';
}

/// generated route for
/// [_i6.VideosScreen]
class VideosScreen extends _i7.PageRouteInfo<VideosScreenArgs> {
  VideosScreen({_i8.Key? key, required _i10.PlaylistModel playlist})
      : super(VideosScreen.name,
            path: 'videos',
            args: VideosScreenArgs(key: key, playlist: playlist));

  static const String name = 'VideosScreen';
}

class VideosScreenArgs {
  const VideosScreenArgs({this.key, required this.playlist});

  final _i8.Key? key;

  final _i10.PlaylistModel playlist;

  @override
  String toString() {
    return 'VideosScreenArgs{key: $key, playlist: $playlist}';
  }
}
