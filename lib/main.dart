import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/list_cubit/list_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/playlist_cubit/playlist_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:flutter_clean_architecture/routes/router.gr.dart';
import 'package:flutter_clean_architecture/util/app_style.dart';
import 'package:flutter_clean_architecture/util/service_locator.dart' as sl;
import 'package:flutter_clean_architecture/util/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sl.init();
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PersonListCubit>(
          create: (context) => serviceLocator<PersonListCubit>()..loadPerson(),
        ),
        BlocProvider<PersonSearchBloc>(
          create: (context) => serviceLocator<PersonSearchBloc>(),
        ),
        BlocProvider<PlaylistCubit>(create: (context) => serviceLocator<PlaylistCubit>()..loadPlaylist(),)
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        theme: ThemeData.dark().copyWith(
          backgroundColor: AppStyle.mainBackground,
          scaffoldBackgroundColor: AppStyle.mainBackground,
        ),
      ),
    );
  }
}