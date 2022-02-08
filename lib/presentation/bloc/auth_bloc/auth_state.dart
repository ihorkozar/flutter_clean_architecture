import 'package:equatable/equatable.dart';


abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class Loading extends AuthState {
}

class Authenticated extends AuthState {
}

class UnAuthenticatedTeacherLogIn extends AuthState {
}

class UnAuthenticatedStudentLogIn extends AuthState {
}

class UnAuthenticatedTeacherRegister extends AuthState {
}

class AuthError extends AuthState {
  final String message;

  const AuthError({required this.message});

  @override
  List<Object> get props => [message];
}