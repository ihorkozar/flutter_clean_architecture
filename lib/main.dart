import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/list_cubit/list_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/playlist_cubit/playlist_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/videoslist_cubit/videoslist_cubit.dart';
import 'package:flutter_clean_architecture/routes/router.gr.dart';
import 'package:flutter_clean_architecture/util/app_style.dart';
import 'package:flutter_clean_architecture/sl/service_locator.dart' as sl;
import 'package:flutter_clean_architecture/sl/service_locator.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBH95muX8oq2rCwtNFNLwwcR9UIpWU8E4Y",
        authDomain: "rm-web-38e46.firebaseapp.com",
        projectId: "rm-web-38e46",
        storageBucket: "rm-web-38e46.appspot.com",
        messagingSenderId: "548690571277",
        appId: "1:548690571277:web:bd5573cea158e890556544",
      ),
    );
  } else{
    await Firebase.initializeApp();
  }

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
        BlocProvider<PlaylistCubit>(
          create: (context) => serviceLocator<PlaylistCubit>()..loadPlaylist(),
        ),
        BlocProvider<VideoListCubit>(
          create: (context) => serviceLocator<VideoListCubit>()..loadVideoList('PLjxrf2q8roU0c3fPxw_74FQ6mTYknkhkd'),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => sl.serviceLocator<AuthBloc>(),
        ),
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
