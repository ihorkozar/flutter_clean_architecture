import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/util/constants.dart';
import 'package:flutter_clean_architecture/util/progress_hud.dart';

import '../../../routes/route_constants.dart';
import '../custom_button.dart';

class StudentAuthWidget extends StatefulWidget {
  const StudentAuthWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<StudentAuthWidget> createState() => _StudentAuthWidgetState();
}

class _StudentAuthWidgetState extends State<StudentAuthWidget> {
  String email = '';
  String password = '';
  String name = '';
  String classAccess = '';
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
                    'LOGIN AS STUDENT',
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
                  decoration: kTextRegDecoration.copyWith(hintText: 'Name'),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                  style: const TextStyle(color: Colors.black),
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    classAccess = value;
                  },
                  decoration:
                      kTextRegDecoration.copyWith(hintText: 'Class access'),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

// ListView registerListView(BuildContext context) {
//   return ListView(
//     children: [
//       const Center(
//         child: Text(
//           'LOGIN AS TEACHER',
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       const SizedBox(
//         height: 8,
//       ),
//       const Center(
//         child: Text(
//           'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla',
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       const SizedBox(
//         height: 8,
//       ),
//       TextField(
//         style: const TextStyle(color: Colors.black),
//         keyboardType: TextInputType.name,
//         textAlign: TextAlign.center,
//         onChanged: (value) {
//           name = value;
//         },
//         decoration: kTextRegDecoration.copyWith(hintText: 'First name'),
//       ),
//       const SizedBox(
//         height: 8,
//       ),
//       TextField(
//         style: const TextStyle(color: Colors.black),
//         keyboardType: TextInputType.name,
//         textAlign: TextAlign.center,
//         onChanged: (value) {
//           surname = value;
//         },
//         decoration: kTextRegDecoration.copyWith(hintText: 'Last name'),
//       ),
//       const SizedBox(
//         height: 8,
//       ),
//       TextField(
//         style: const TextStyle(color: Colors.black),
//         keyboardType: TextInputType.name,
//         textAlign: TextAlign.center,
//         onChanged: (value) {
//           email = value;
//         },
//         decoration: kTextRegDecoration.copyWith(hintText: 'Email address'),
//       ),
//       const SizedBox(
//         height: 8,
//       ),
//       TextField(
//         style: const TextStyle(color: Colors.black),
//         keyboardType: TextInputType.name,
//         textAlign: TextAlign.center,
//         onChanged: (value) {
//           password = value;
//         },
//         decoration: kTextRegDecoration.copyWith(hintText: 'Password'),
//       ),
//       const SizedBox(
//         height: 8,
//       ),
//       TextField(
//         style: const TextStyle(color: Colors.black),
//         keyboardType: TextInputType.name,
//         textAlign: TextAlign.center,
//         onChanged: (value) {
//           password = value;
//         },
//         decoration: kTextRegDecoration.copyWith(hintText: 'Confirm password'),
//       ),
//       CustomButton(
//         text: 'Log In',
//         onTap: () async {
//           setState(() {
//             showProgress = true;
//           });
//           try {
//             final UserCredential? newUser =
//                 await FirebaseAuth.instance.signInWithEmailAndPassword(
//               email: email,
//               password: password,
//             );
//             if (newUser != null) {
//               AutoRouter.of(context).pushNamed(RouteConstants.overview);
//             } else {
//               print(newUser);
//               setState(() {
//                 showProgress = false;
//               });
//             }
//           } catch (e) {
//             print(e);
//             setState(() {
//               showProgress = false;
//             });
//           }
//           setState(() {
//             showProgress = false;
//           });
//         },
//       ),
//     ],
//   );
// }
//
// ListView logInListView(BuildContext context) {
//   return ListView(
//     children: [
//       const Center(
//         child: Text(
//           'LOGIN AS TEACHER',
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       const SizedBox(
//         height: 8,
//       ),
//       TextField(
//         style: const TextStyle(color: Colors.black),
//         keyboardType: TextInputType.name,
//         textAlign: TextAlign.center,
//         onChanged: (value) {
//           email = value;
//         },
//         decoration: kTextRegDecoration.copyWith(hintText: 'Email address'),
//       ),
//       const SizedBox(
//         height: 8,
//       ),
//       TextField(
//         style: const TextStyle(color: Colors.black),
//         keyboardType: TextInputType.name,
//         textAlign: TextAlign.center,
//         onChanged: (value) {
//           password = value;
//         },
//         decoration: kTextRegDecoration.copyWith(hintText: 'Password'),
//       ),
//       CustomButton(
//         text: 'Log In',
//         onTap: () async {
//           setState(() {
//             showProgress = true;
//           });
//           try {
//             final UserCredential? newUser =
//                 await FirebaseAuth.instance.signInWithEmailAndPassword(
//               email: email,
//               password: password,
//             );
//             if (newUser != null) {
//               AutoRouter.of(context).pushNamed(RouteConstants.overview);
//             }
//           } on FirebaseAuthException catch (e) {
//             print(e);
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 behavior: SnackBarBehavior.floating,
//                 content: Text(e.message.toString()),
//               ),
//             );
//           }
//           setState(() {
//             showProgress = false;
//           });
//         },
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text(
//             'Dont have an account ?',
//             style: TextStyle(color: Colors.black),
//           ),
//           TextButton(
//             onPressed: () {
//               setState(() {
//                 isRegister = true;
//               });
//             },
//             child: const Text('Register'),
//           ),
//         ],
//       ),
//     ],
//   );
// }
}
