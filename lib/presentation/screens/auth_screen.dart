import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/auth/auth_tabbar.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/auth/student_auth.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/auth/teacher_auth.dart';
import 'package:flutter_clean_architecture/util/responcive.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Responsive.isMobile(context)
              ? Column(
                  children: [
                    Center(
                      child: FlutterLogo(
                        size: 300,
                      ),
                    ),
                    Expanded(
                      child: AuthFormWidget(),
                    ),
                  ],
                )
              : SizedBox(
                  width: 800,
                  child: Row(
                    children: const [
                      Center(
                        child: FlutterLogo(
                          size: 300,
                        ),
                      ),
                      Expanded(child: AuthFormWidget()),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}

class AuthFormWidget extends StatefulWidget {
  const AuthFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AuthFormWidget> createState() => _AuthFormWidgetState();
}

class _AuthFormWidgetState extends State<AuthFormWidget>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (context, value) {
        return [
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AuthTabBar(tabController: _tabController),
              ],
            ),
          ),
        ];
      },
      body: TabBarView(
        children: const [
          TeacherAuth(),
          StudentAuth(),
        ],
        controller: _tabController,
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
