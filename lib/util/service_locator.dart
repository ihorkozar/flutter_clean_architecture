import 'package:flutter_clean_architecture/data/repository/person_repository_impl.dart';
import 'package:flutter_clean_architecture/data/sources/local_source.dart';
import 'package:flutter_clean_architecture/data/sources/remote_source.dart';
import 'package:flutter_clean_architecture/domain/repository/person_repository.dart';
import 'package:flutter_clean_architecture/domain/use_cases/get_all.dart';
import 'package:flutter_clean_architecture/domain/use_cases/search.dart';
import 'package:flutter_clean_architecture/presentation/bloc/list_cubit/list_cubit.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_bloc.dart';
import 'package:flutter_clean_architecture/util/connection_info.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

final serviceLocator = GetIt.instance;

Future<void> init() async {
  // BLoC
  serviceLocator.registerFactory(
        () => PersonListCubit(getAllPersons: serviceLocator()),
  );
  serviceLocator.registerFactory(
        () => PersonSearchBloc(searchPerson: serviceLocator()),
  );

  // UseCases
  serviceLocator.registerLazySingleton(() => GetAllPersons(serviceLocator()));
  serviceLocator.registerLazySingleton(() => SearchPerson(serviceLocator()));

  // Repository
  serviceLocator.registerLazySingleton<PersonRepository>(
        () => PersonRepositoryImpl(
      remoteDataSource: serviceLocator(),
      localDataSource: serviceLocator(),
      connectionInfo: serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<PersonRemoteDataSource>(
        () => PersonRemoteDataSourceImpl(
      client: serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<PersonLocalDataSource>(
        () => PersonLocalDataSourceImpl(sharedPref: serviceLocator()),
  );

  // Util
  serviceLocator.registerLazySingleton<ConnectionInfo>(
        () => ConnectionInfoImp(serviceLocator()),
  );

  // External
  final  sharedPreferences = await SharedPreferences.getInstance();
  serviceLocator.registerLazySingleton(() => sharedPreferences);
  serviceLocator.registerLazySingleton(() => http.Client());
  serviceLocator.registerLazySingleton(() => InternetConnectionChecker());
}