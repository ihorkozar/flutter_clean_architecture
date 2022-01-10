import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/data/models/person/person_model.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

abstract class PersonRepository{
  Future<Either<Failure, List<PersonModel>>> getAllPersons(int page);
  Future<Either<Failure, List<PersonModel>>> searchPerson(String query);
}