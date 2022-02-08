import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_clean_architecture/routes/route_constants.dart';
import 'package:flutter_clean_architecture/util/app_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _width = 10;
  double _height = 10;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      Timer(const Duration(milliseconds: 1), () {
        _updateSizes();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.cellBackground,
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          Timer(const Duration(seconds: 3), () {
            AutoRouter.of(context).replaceNamed(RouteConstants.auth);
          });
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: AnimatedContainer(
                height: _height,
                width: _width,
                duration: const Duration(milliseconds: 1000),
                child: Image.asset('assets/images/rm_splash.png'),
              ),
            ),
          );
        },
      ),
    );
  }

  void _updateSizes() {
    setState(() {
      _width = 500;
      _height = 500;
    });
  }
}
