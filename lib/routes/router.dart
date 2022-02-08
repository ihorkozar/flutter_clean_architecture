import 'package:auto_route/annotations.dart';
import 'package:flutter_clean_architecture/presentation/screens/auth_screen.dart';
import 'package:flutter_clean_architecture/presentation/screens/playlists_screen.dart';
import 'package:flutter_clean_architecture/presentation/screens/rm/detail_screen.dart';
import 'package:flutter_clean_architecture/presentation/screens/rm/overview_screen.dart';
import 'package:flutter_clean_architecture/presentation/screens/splash_screen.dart';
import 'package:flutter_clean_architecture/presentation/screens/stepper_screen.dart';
import 'package:flutter_clean_architecture/presentation/screens/videos_screen.dart';
import 'package:flutter_clean_architecture/routes/route_constants.dart';
import 'package:flutter_clean_architecture/samples/video_sample.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true, path: RouteConstants.splash),
    AutoRoute(page: OverviewScreen, path: RouteConstants.overview),
    AutoRoute(page: PersonDetailScreen, path: RouteConstants.detail),
    AutoRoute(page: PlaylistsScreen, path: RouteConstants.playlists),
    AutoRoute(page: VideosScreen, path: RouteConstants.videos),
    AutoRoute(page: VideoSample, path: RouteConstants.sample),
    AutoRoute(page: AuthScreen, path: RouteConstants.auth),
    AutoRoute(page: StepperScreen, path: RouteConstants.stepper),
  ],
)
class $AppRouter {}
