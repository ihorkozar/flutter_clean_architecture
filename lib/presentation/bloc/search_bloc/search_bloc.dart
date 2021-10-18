import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/domain/use_cases/search.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_event.dart';
import 'package:flutter_clean_architecture/presentation/bloc/search_bloc/search_state.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

const serverErrorMsg = 'Server Error';
const cachedErrorMsg = 'Cache Error';

class PersonSearchBloc extends Bloc<PersonSearchEvent, PersonSearchState> {
  final SearchPerson searchPerson;

  PersonSearchBloc({required this.searchPerson}) : super(PersonSearchEmpty());

  @override
  Stream<PersonSearchState> mapEventToState(PersonSearchEvent event) async* {
    if (event is SearchPersons) {
      yield* _mapFetchPersonsToState(event.personQuery);
    }
  }

  Stream<PersonSearchState> _mapFetchPersonsToState(String personQuery) async* {
    yield PersonSearchLoading();

    final failureOrPerson =
        await searchPerson(SearchParams(query: personQuery));

    yield failureOrPerson.fold(
        (failure) => PersonSearchError(message: _mapFailureToMessage(failure)),
        (person) => PersonSearchLoaded(persons: person));
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverErrorMsg;
      case CacheFailure:
        return cachedErrorMsg;
      default:
        return 'Unexpected Error';
    }
  }
}
