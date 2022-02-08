import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/auth/auth_tabbar.dart';
import 'package:flutter_clean_architecture/presentation/custom_widgets/auth/student_auth.dart';
import 'package:flutter_clean_architecture/util/responsive.dart';

class AuthScreenTab extends StatelessWidget {
  const AuthScreenTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: getResponsiveWidget(context)),
      ),
    );
  }

  Widget getResponsiveWidget(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Column(
        children: const [
          Center(
            child: FlutterLogo(
              size: 300,
            ),
          ),
          Expanded(
            child: AuthFormWidget(),
          ),
        ],
      );
    } else if (Responsive.isTablet(context)) {
      return SizedBox(
        width: 800,
        height: 600,
        child: Row(
          children: const [
            Center(
              child: FlutterLogo(
                size: 300,
              ),
            ),
            Expanded(
              child: AuthFormWidget(),
            ),
          ],
        ),
      );
    } else{
      return SizedBox(
        width: 800,
        height: 600,
        child: Row(
          children: const [
            Center(
              child: FlutterLogo(
                size: 300,
              ),
            ),
            Expanded(
              child: AuthFormWidget(),
            ),
          ],
        ),
      );
    }
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
                //AuthTabBar(tabController: _tabController),
              ],
            ),
          ),
        ];
      },
      body: TabBarView(
        children: const [
          // StudentAuthWidget(),
          // StudentAuthWidget(),
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
