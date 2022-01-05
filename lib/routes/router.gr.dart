// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../domain/entities/person_entity.dart' as _i6;
import '../presentation/custom_widgets/search_result.dart' as _i3;
import '../presentation/screens/detail_screen.dart' as _i2;
import '../presentation/screens/overview_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    PersonDetailRoute.name: (routeData) {
      final args = routeData.argsAs<PersonDetailRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.PersonDetailPage(key: args.key, person: args.person));
    },
    SearchResult.name: (routeData) {
      final args = routeData.argsAs<SearchResultArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i3.SearchResult(key: args.key, personResult: args.personResult));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(PersonDetailRoute.name, path: '/person-detail-page'),
        _i4.RouteConfig(SearchResult.name, path: '/search-result')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.PersonDetailPage]
class PersonDetailRoute extends _i4.PageRouteInfo<PersonDetailRouteArgs> {
  PersonDetailRoute({_i5.Key? key, required _i6.PersonEntity person})
      : super(PersonDetailRoute.name,
            path: '/person-detail-page',
            args: PersonDetailRouteArgs(key: key, person: person));

  static const String name = 'PersonDetailRoute';
}

class PersonDetailRouteArgs {
  const PersonDetailRouteArgs({this.key, required this.person});

  final _i5.Key? key;

  final _i6.PersonEntity person;

  @override
  String toString() {
    return 'PersonDetailRouteArgs{key: $key, person: $person}';
  }
}

/// generated route for
/// [_i3.SearchResult]
class SearchResult extends _i4.PageRouteInfo<SearchResultArgs> {
  SearchResult({_i5.Key? key, required _i6.PersonEntity personResult})
      : super(SearchResult.name,
            path: '/search-result',
            args: SearchResultArgs(key: key, personResult: personResult));

  static const String name = 'SearchResult';
}

class SearchResultArgs {
  const SearchResultArgs({this.key, required this.personResult});

  final _i5.Key? key;

  final _i6.PersonEntity personResult;

  @override
  String toString() {
    return 'SearchResultArgs{key: $key, personResult: $personResult}';
  }
}
