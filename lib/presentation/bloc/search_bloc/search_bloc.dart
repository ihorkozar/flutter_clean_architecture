import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/domain/use_cases/search.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_event.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_state.dart';
import 'package:flutter_clean_architecture/util/constants.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

class PersonSearchBloc extends Bloc<PersonSearchEvent, PersonSearchState> {
  final SearchPerson searchPerson;

  PersonSearchBloc({required this.searchPerson}) : super(PersonSearchEmpty()) {
    on<SearchPersons>(_onEvent);
  }

  FutureOr<void> _onEvent(
    SearchPersons event,
    Emitter<PersonSearchState> emit,
  ) async {
    emit(PersonSearchLoading());

    final failureOrPerson =
        await searchPerson(SearchParams(query: event.personQuery));

    emit(failureOrPerson.fold(
        (failure) => PersonSearchError(message: _mapFailureToMessage(failure)),
        (person) => PersonSearchLoaded(persons: person),));
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
