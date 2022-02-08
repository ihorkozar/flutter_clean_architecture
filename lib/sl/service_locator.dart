import 'package:flutter_clean_architecture/data/repository/auth_repository_impl.dart';
import 'package:flutter_clean_architecture/data/repository/person_repository_impl.dart';
import 'package:flutter_clean_architecture/data/repository/playlist_repository_impl.dart';
import 'package:flutter_clean_architecture/data/sources/local_source.dart';
import 'package:flutter_clean_architecture/data/sources/remote_source.dart';
import 'package:flutter_clean_architecture/domain/repository/auth_repository.dart';
import 'package:flutter_clean_architecture/domain/repository/person_repository.dart';
import 'package:flutter_clean_architecture/domain/repository/playlist_repository.dart';
import 'package:flutter_clean_architecture/domain/use_cases/get_all.dart';
import 'package:flutter_clean_architecture/domain/use_cases/get_playlist.dart';
import 'package:flutter_clean_architecture/domain/use_cases/get_videolist.dart';
import 'package:flutter_clean_architecture/domain/use_cases/search.dart';
import 'package:flutter_clean_architecture/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/list_cubit/list_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/playlist_cubit/playlist_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/videoslist_cubit/videoslist_cubit.dart';
import 'package:flutter_clean_architecture/util/connection_info.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_internet_checker/universal_internet_checker.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  // BLoC
  serviceLocator.registerFactory(
    () => PersonListCubit(getAllPersons: serviceLocator()),
  );
  serviceLocator.registerFactory(
    () => PersonSearchBloc(searchPerson: serviceLocator()),
  );
  serviceLocator.registerFactory(
    () => PlaylistCubit(getPlaylist: serviceLocator()),
  );
  serviceLocator.registerFactory(
    () => VideoListCubit(getVideos: serviceLocator()),
  );
  serviceLocator.registerFactory(
    () => AuthBloc(authRepository: serviceLocator()),
  );

  // UseCases
  serviceLocator.registerLazySingleton(() => GetAllPersons(serviceLocator()));
  serviceLocator.registerLazySingleton(() => SearchPerson(serviceLocator()));
  serviceLocator.registerLazySingleton(() => GetPlaylist(serviceLocator()));
  serviceLocator.registerLazySingleton(() => GetVideoList(serviceLocator()));

  // Repository
  serviceLocator.registerLazySingleton<PersonRepository>(
    () => PersonRepositoryImpl(
      remoteDataSource: serviceLocator(),
      localDataSource: serviceLocator(),
      connectionInfo: serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<PlaylistRepository>(
    () => PlaylistRepositoryImpl(
      remoteDataSource: serviceLocator(),
      connectionInfo: serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(),
  );

  //Data Sources
  serviceLocator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      client: serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<LocalDataSource>(
    () => LocalDataSourceImpl(sharedPref: serviceLocator()),
  );

  // Util
  serviceLocator.registerLazySingleton<ConnectionInfo>(
    () => ConnectionInfoImp(),
  );

  // External
  final sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => sharedPreferences);
  serviceLocator.registerLazySingleton(() => http.Client());
  serviceLocator.registerLazySingleton(() => UniversalInternetChecker());
}
