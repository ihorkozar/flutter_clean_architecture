import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/domain/entities/person_entity.dart';
import 'package:flutter_clean_architecture/domain/use_cases/get_all.dart';
import 'package:flutter_clean_architecture/util/failure.dart';
import 'list_state.dart';

const serverErrorMsg = 'Server Error';
const cachedErrorMsg = 'Cache Error';

class PersonListCubit extends Cubit<PersonState> {
  final GetAllPersons getAllPersons;

  PersonListCubit({required this.getAllPersons}) : super(PersonEmpty());

  int page = 1;

  void loadPerson() async {
    if (state is PersonLoading) return;

    final currentState = state;

    var oldPerson = <PersonEntity>[];
    if (currentState is PersonLoaded) {
      oldPerson = currentState.personsList;
    }

    emit(PersonLoading(oldPerson, isFirstFetch: page == 1));

    final failureOrPerson = await getAllPersons(PageParams(page: page));

    failureOrPerson.fold((error) => emit(PersonError(message: _mapFailureToMessage(error))), (character) {
      page++;
      final persons = (state as PersonLoading).oldPersonsList;
      persons.addAll(character);
      print('List length: ${persons.length.toString()}');
      emit(PersonLoaded(persons));
    });
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