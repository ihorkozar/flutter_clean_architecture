import 'package:auto_route/annotations.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/search_result.dart';
import 'package:flutter_clean_architecture/presentation/screens/detail_screen.dart';
import 'package:flutter_clean_architecture/presentation/screens/overview_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: PersonDetailPage),
    AutoRoute(page: SearchResult),
  ],
)
class $AppRouter {}