import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/presentation/bloc/auth_bloc/auth_bloc.dart';

import '../../../routes/route_constants.dart';
import '../../../util/constants.dart';
import '../../../util/progress_hud.dart';
import '../../bloc/auth_bloc/auth_event.dart';
import '../custom_button.dart';

class TeacherAuthRegisterWidget extends StatefulWidget {
  const TeacherAuthRegisterWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TeacherAuthRegisterWidget> createState() =>
      _TeacherAuthRegisterWidgetState();
}

class _TeacherAuthRegisterWidgetState extends State<TeacherAuthRegisterWidget> {
  String email = '';
  String password = '';
  String name = '';
  String surname = '';
  bool showProgress = false;
  bool isRegister = false;

  @override
  Widget build(BuildContext context) {
    return ProgressHud(
      inAsyncCall: showProgress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'REGISTER AS TEACHER',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Center(
                  child: Text(
                    'Once you’ve registered your personal details and logged in, you will be able to create and manage your own classrooms, as well as join existing classrooms!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    name = value;
                  },
                  decoration:
                      kTextRegDecoration.copyWith(hintText: 'First name'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    surname = value;
                  },
                  decoration:
                      kTextRegDecoration.copyWith(hintText: 'Last name'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration:
                      kTextRegDecoration.copyWith(hintText: 'Email address'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextRegDecoration.copyWith(hintText: 'Password'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration:
                      kTextRegDecoration.copyWith(hintText: 'Confirm password'),
                ),
                CustomButton(
                  text: 'Register',
                  onTap: () async {
                    setState(() {
                      showProgress = true;
                    });
                    try {
                      final UserCredential? newUser = await FirebaseAuth
                          .instance
                          .signInWithEmailAndPassword(
                        email: email,
                        password: password,
                      );
                      if (newUser != null) {
                        AutoRouter.of(context)
                            .pushNamed(RouteConstants.overview);
                      } else {
                        print(newUser);
                        setState(() {
                          showProgress = false;
                        });
                      }
                    } catch (e) {
                      debugPrint(e.toString());
                      setState(() {
                        showProgress = false;
                      });
                    }
                    setState(() {
                      showProgress = false;
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(onPressed: () {
                      BlocProvider.of<AuthBloc>(context).add(
                        TeacherAuthLogIn(),
                      );
                    }, child: const Text('Log in')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TeacherAuthLogInWidget extends StatefulWidget {
  const TeacherAuthLogInWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<TeacherAuthLogInWidget> createState() =>
      _TeacherAuthLogInWidgetState();
}

class _TeacherAuthLogInWidgetState extends State<TeacherAuthLogInWidget> {
  String email = '';
  String password = '';
  bool showProgress = false;
  bool isRegister = false;

  @override
  Widget build(BuildContext context) {
    return ProgressHud(
      inAsyncCall: showProgress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    'LOG IN AS TEACHER',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration:
                  kTextRegDecoration.copyWith(hintText: 'Email address'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.name,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: kTextRegDecoration.copyWith(hintText: 'Password'),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomButton(
                  text: 'Log In',
                  onTap: () async {
                    setState(() {
                      showProgress = true;
                    });
                    try {
                      final UserCredential? newUser = await FirebaseAuth
                          .instance
                          .signInWithEmailAndPassword(
                        email: email,
                        password: password,
                      );
                      if (newUser != null) {
                        AutoRouter.of(context)
                            .pushNamed(RouteConstants.overview);
                      } else {
                        print(newUser);
                        setState(() {
                          showProgress = false;
                        });
                      }
                    } catch (e) {
                      debugPrint(e.toString());
                      setState(() {
                        showProgress = false;
                      });
                    }
                    setState(() {
                      showProgress = false;
                    });
                  },
                ),
                SocialCustomButton(text: 'Sign In with Google', onTap: (){
                  AutoRouter.of(context).pushNamed(RouteConstants.stepper);
                }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Do not have an account?',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextButton(onPressed: () {
                      BlocProvider.of<AuthBloc>(context).add(
                        TeacherAuthRegister(),
                      );
                    }, child: const Text('Register'),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
