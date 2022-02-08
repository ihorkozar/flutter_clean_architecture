import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class SignInTeacherRequested extends AuthEvent {
  final String email;
  final String password;

  SignInTeacherRequested(this.email, this.password);
}

class SignInStudentRequested extends AuthEvent {
  final String email;
  final String password;

  SignInStudentRequested(this.email, this.password);
}

class SignUpTeacherRequested extends AuthEvent {
  final String email;
  final String password;

  SignUpTeacherRequested(this.email, this.password);
}

class TeacherAuthLogIn extends AuthEvent {}

class TeacherAuthRegister extends AuthEvent {}

class StudentAuthEvent extends AuthEvent {}

class SignOutRequested extends AuthEvent {}