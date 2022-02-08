import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/domain/repository/auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(UnAuthenticatedStudentLogIn()) {
    on<TeacherAuthLogIn>((event, emit) {
      emit(UnAuthenticatedTeacherLogIn());
    });

    on<StudentAuthEvent>((event, emit) {
      emit(UnAuthenticatedStudentLogIn());
    });

    on<TeacherAuthRegister>((event, emit) {
      emit(UnAuthenticatedTeacherRegister());
    });

    on<SignInTeacherRequested>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signIn(
          email: event.email,
          password: event.password,
        );
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(
          message: e.toString(),
        ));
        emit(UnAuthenticatedTeacherLogIn());
      }
    });

    on<SignInStudentRequested>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signIn(
          email: event.email,
          password: event.password,
        );
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(
          message: e.toString(),
        ));
        emit(UnAuthenticatedStudentLogIn());
      }
    });

    on<SignUpTeacherRequested>((event, emit) async {
      emit(Loading());
      try {
        await authRepository.signUp(
          email: event.email,
          password: event.password,
        );
        emit(Authenticated());
      } catch (e) {
        emit(AuthError(
          message: e.toString(),
        ));
        emit(UnAuthenticatedTeacherRegister());
      }
    });

    on<SignOutRequested>((event, emit) async {
      emit(Loading());
      await authRepository.signOut();
      emit(UnAuthenticatedStudentLogIn());
    });
  }
}
