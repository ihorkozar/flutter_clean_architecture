import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/util/constants.dart';
import 'package:flutter_clean_architecture/util/progress_hud.dart';
import 'package:flutter_clean_architecture/util/responcive.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Responsive.isMobile(context)
              ? Column(
                  children: [
                    const Center(
                      child: FlutterLogo(
                        size: 300,
                      ),
                    ),
                    Expanded(child: NewWidget(tabController: _tabController)),
                  ],
                )
              : Row(
                  children: [
                    const Center(
                      child: FlutterLogo(
                        size: 300,
                      ),
                    ),
                    Expanded(child: NewWidget(tabController: _tabController)),
                  ],
                ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 332,
              child: TabBar(
                indicatorWeight: 0,
                labelPadding: const EdgeInsets.only(right: 0),
                padding: const EdgeInsets.only(top: 8, bottom: 8, right: 16),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                tabs: [
                  Tab(
                    height: 150,
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
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
                  Tab(
                    height: 150,
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
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
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              TeacherAuth(),
              StudentAuth(),
            ],
            controller: _tabController,
          ),
        ),
      ],
    );
  }
}

class StudentAuth extends StatefulWidget {
  const StudentAuth({
    Key? key,
  }) : super(key: key);

  @override
  State<StudentAuth> createState() => _StudentAuthState();
}

class _StudentAuthState extends State<StudentAuth> {
  String email = '';
  String password = '';
  String name = '';
  String surname = '';
  bool showProgress = false;

  @override
  Widget build(BuildContext context) {
    return ProgressHud(
      inAsyncCall: showProgress,
      child: Scaffold(
        body: Padding(
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
                  const Text(
                    'REGISTER AS',
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 8,),
                  const Text(
                    'bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla',
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(height: 8,),
                  TextField(
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      name = value;
                    },
                    decoration: kTextRegDecoration.copyWith(hintText: 'First name'),
                  ),
                  const SizedBox(height: 8,),
                  TextField(
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      surname = value;
                    },
                    decoration: kTextRegDecoration.copyWith(hintText: 'Last name'),
                  ),
                  const SizedBox(height: 8,),
                  TextField(
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      surname = value;
                    },
                    decoration: kTextRegDecoration.copyWith(hintText: 'Email address'),
                  ),
                  const SizedBox(height: 8,),
                  TextField(
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      surname = value;
                    },
                    decoration: kTextRegDecoration.copyWith(hintText: 'Password'),
                  ),
                  const SizedBox(height: 8,),
                  TextField(
                    keyboardType: TextInputType.name,
                    textAlign: TextAlign.center,
                    onChanged: (value) {
                      surname = value;
                    },
                    decoration: kTextRegDecoration.copyWith(hintText: 'Confirm password'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TeacherAuth extends StatelessWidget {
  const TeacherAuth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Center(child: Text('1st tab')),
    );
  }
}
