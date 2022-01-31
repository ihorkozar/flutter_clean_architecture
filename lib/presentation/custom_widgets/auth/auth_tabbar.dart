import 'package:flutter/material.dart';

class AuthTabBar extends StatelessWidget {
  const AuthTabBar({
    Key? key,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      indicatorWeight: 0,
      labelPadding: const EdgeInsets.only(right: 8, left: 8),
      padding: const EdgeInsets.only(top: 8, bottom: 8),
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
    );
  }
}