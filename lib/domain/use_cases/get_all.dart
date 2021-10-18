import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_clean_architecture/domain/entities/person_entity.dart';
import 'package:flutter_clean_architecture/domain/repository/person_repository.dart';
import 'package:flutter_clean_architecture/domain/use_cases/usecase.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

class GetAllPersons extends UseCase<List<PersonEntity>, PageParams> {
  final PersonRepository repository;

  GetAllPersons(this.repository);

  @override
  Future<Either<Failure, List<PersonEntity>>> call(PageParams params) async {
    return await repository.getAllPersons(params.page);
  }
}

class PageParams extends Equatable{
  final int page;

  const PageParams({required this.page});

  @override
  List<Object?> get props => [page];

}
