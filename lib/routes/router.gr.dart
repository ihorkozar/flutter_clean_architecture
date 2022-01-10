// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../data/models/person/person_model.dart' as _i8;
import '../presentation/custom_widgets/search_result.dart' as _i4;
import '../presentation/screens/detail_screen.dart' as _i3;
import '../presentation/screens/overview_screen.dart' as _i2;
import '../presentation/screens/playlists_screen.dart' as _i5;
import '../presentation/screens/splash_screen.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    PersonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PersonDetailRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.PersonDetailPage(key: args.key, person: args.person));
    },
    SearchResult.name: (routeData) {
      final args = routeData.argsAs<SearchResultArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i4.SearchResult(key: args.key, personResult: args.personResult));
    },
    SongsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SongsPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig('/#redirect',
            path: '/', redirectTo: 'splash', fullMatch: true),
        _i6.RouteConfig(SplashScreen.name, path: 'splash'),
        _i6.RouteConfig(HomeRoute.name, path: 'home'),
        _i6.RouteConfig(PersonDetailRoute.name, path: 'detail'),
        _i6.RouteConfig(SearchResult.name, path: 'search'),
        _i6.RouteConfig(SongsRoute.name, path: 'songs')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i6.PageRouteInfo<void> {
  const SplashScreen() : super(SplashScreen.name, path: 'splash');

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.PersonDetailPage]
class PersonDetailRoute extends _i6.PageRouteInfo<PersonDetailRouteArgs> {
  PersonDetailRoute({_i7.Key? key, required _i8.PersonModel person})
      : super(PersonDetailRoute.name,
            path: 'detail',
            args: PersonDetailRouteArgs(key: key, person: person));

  static const String name = 'PersonDetailRoute';
}

class PersonDetailRouteArgs {
  const PersonDetailRouteArgs({this.key, required this.person});

  final _i7.Key? key;

  final _i8.PersonModel person;

  @override
  String toString() {
    return 'PersonDetailRouteArgs{key: $key, person: $person}';
  }
}

/// generated route for
/// [_i4.SearchResult]
class SearchResult extends _i6.PageRouteInfo<SearchResultArgs> {
  SearchResult({_i7.Key? key, required _i8.PersonModel personResult})
      : super(SearchResult.name,
            path: 'search',
            args: SearchResultArgs(key: key, personResult: personResult));

  static const String name = 'SearchResult';
}

class SearchResultArgs {
  const SearchResultArgs({this.key, required this.personResult});

  final _i7.Key? key;

  final _i8.PersonModel personResult;

  @override
  String toString() {
    return 'SearchResultArgs{key: $key, personResult: $personResult}';
  }
}

/// generated route for
/// [_i5.SongsPage]
class SongsRoute extends _i6.PageRouteInfo<void> {
  const SongsRoute() : super(SongsRoute.name, path: 'songs');

  static const String name = 'SongsRoute';
}
