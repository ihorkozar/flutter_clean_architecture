import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/util/failure.dart';

abstract class UseCase<Type, Params>{
  //прикольная штука - если метод назвать call то потом можно не указывать его при вызове
  Future<Either<Failure, Type>> call(Params params);
}