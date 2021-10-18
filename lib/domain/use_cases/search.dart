import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/domain/entities/person_entity.dart';
import 'package:flutter_clean_architecture/domain/repository/person_repository.dart';
import 'package:flutter_clean_architecture/domain/use_cases/usecase.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

class SearchPerson extends UseCase<List<PersonEntity>, SearchParams> {
  final PersonRepository repository;

  SearchPerson(this.repository);

  @override
  Future<Either<Failure, List<PersonEntity>>> call(SearchParams params) async {
    return await repository.searchPerson(params.query);
  }
}

class SearchParams extends Equatable{
  final String query;

  const SearchParams({required this.query});

  @override
  List<Object?> get props => [query];

}