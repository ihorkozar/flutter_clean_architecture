import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/data/models/person/person_model.dart';
import 'package:flutter_clean_architecture/domain/use_cases/get_all.dart';
import 'package:flutter_clean_architecture/util/constants.dart';
import 'package:flutter_clean_architecture/util/failure.dart';
import 'list_state.dart';

class PersonListCubit extends Cubit<PersonState> {
  final GetAllPersons getAllPersons;

  PersonListCubit({required this.getAllPersons}) : super(PersonEmpty());

  int page = 1;

  void loadPerson() async {
    if (state is PersonLoading) return;

    final currentState = state;

    var oldPerson = <PersonModel>[];
    if (currentState is PersonLoaded) {
      oldPerson = currentState.personsList;
    }

    emit(PersonLoading(oldPerson, isFirstFetch: page == 1));

    final failureOrPerson = await getAllPersons(PageParams(page: page));

    failureOrPerson.fold((error) => emit(PersonError(message: _mapFailureToMessage(error))), (character) {
      page++;
      final persons = (state as PersonLoading).oldPersonsList;
      persons.addAll(character);
      debugPrint('List length: ${persons.length.toString()}');
      emit(PersonLoaded(persons));
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return Constants.serverErrorMsg;
      case CacheFailure:
        return Constants.cachedErrorMsg;
      default:
        return 'Unexpected Error';
    }
  }

}