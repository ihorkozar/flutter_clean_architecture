import 'package:auto_route/annotations.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/search_result.dart';
import 'package:flutter_clean_architecture/presentation/screens/detail_screen.dart';
import 'package:flutter_clean_architecture/presentation/screens/overview_screen.dart';
import 'package:flutter_clean_architecture/presentation/screens/playlists_screen.dart';
import 'package:flutter_clean_architecture/presentation/screens/splash_screen.dart';
import 'package:flutter_clean_architecture/routes/route_constants.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true, path: RouteConstants.splash),
    AutoRoute(page: HomePage, path: RouteConstants.home),
    AutoRoute(page: PersonDetailPage, path: RouteConstants.detail),
    AutoRoute(page: SearchResult, path: RouteConstants.search),
    AutoRoute(page: SongsPage, path: RouteConstants.songs),
  ],
)
class $AppRouter {}
