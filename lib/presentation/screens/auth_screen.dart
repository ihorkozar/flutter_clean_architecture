import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/auth_bloc/auth_event.dart';
import 'package:flutter_clean_architecture/presentation/bloc/auth_bloc/auth_state.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/auth/auth_tabbar.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/auth/teacher_auth.dart';
import 'package:flutter_clean_architecture/routes/route_constants.dart';
import 'package:flutter_clean_architecture/util/responsive.dart';

import '../custom_widgets/auth/student_auth.dart';

enum UserType{
  teacher,
  student,
}

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 100.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              FlutterLogo(size: 40,),
              Text('FLUTTER'),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Center(child: getResponsiveWidget(context)),
      ),
    );
  }

  Widget getResponsiveWidget(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return ListView(
        children: const [
          Center(
            child: FlutterLogo(
              size: 300,
            ),
          ),
          AuthWidget(),
        ],
      );
    } else if (Responsive.isTablet(context)) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Center(
            child: FlutterLogo(
              size: 250,
            ),
          ),
          Flexible(
            child: SizedBox(
              width: 400,
              height: 650,
              child: ListView(
                children: const [
                  AuthWidget(),
                ],
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Center(
            child: FlutterLogo(
              size: 300,
            ),
          ),
          SizedBox(
              width: 500,
              height: 600,
              child: ListView(children: const [
                AuthWidget(),
              ])),
        ],
      );
    }
  }
}

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          AutoRouter.of(context).replaceNamed(RouteConstants.overview);
        }
        if (state is AuthError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        if (state is Loading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is UnAuthenticatedTeacherLogIn) {
          return Column(
            children: const [
              AuthButton(userType: UserType.teacher),
              Center(
                child: Text('UnAuthenticatedTeacherLogIn'),
              ),
              TeacherAuthLogInWidget(),
            ],
          );
        } else if (state is UnAuthenticatedTeacherRegister) {
          return Column(
            children: const [
              AuthButton(userType: UserType.teacher),
              Center(
                child: Text('UnAuthenticatedTeacherRegister'),
              ),
              TeacherAuthRegisterWidget(),
            ],
          );
        } else if (state is UnAuthenticatedStudentLogIn) {
          return Column(
            children: const <Widget>[
              AuthButton(userType: UserType.student),
              Center(
                child: Text('UnAuthenticatedStudentLogIn'),
              ),
              StudentAuthWidget(),
            ],
          );
        } else {
          return const Center(
            child: Text('Error'),
          );
        }
      },
    );
  }
}

class AuthButton extends StatelessWidget {
  const AuthButton({required this.userType, Key? key,}) : super(key: key);

  final UserType userType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              BlocProvider.of<AuthBloc>(context).add(
                StudentAuthEvent(),
              );
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: userType == UserType.student ? Colors.blue : Colors.transparent,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  FlutterLogo(
                    size: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text('Student'),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          GestureDetector(
            onTap: () {
              BlocProvider.of<AuthBloc>(context).add(
                TeacherAuthLogIn(),
              );
            },
            child: Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                color: userType == UserType.teacher ? Colors.blue : Colors.transparent,
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  FlutterLogo(
                    size: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text('Teacher'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
