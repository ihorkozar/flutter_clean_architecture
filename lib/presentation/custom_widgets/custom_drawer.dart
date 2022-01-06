import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/routes/route_constants.dart';
import 'package:flutter_clean_architecture/util/app_style.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: AppStyle.cellBackground,
              ),
              child: Center(
                  child: Text(
                    'App for Rick and Morty fans',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ),
            ListTile(
              title: const Text('Characters'),
              onTap: () {
                AutoRouter.of(context).pushNamed(RouteConstants.home);
              },
            ),
            Divider(
              indent: 8,
              endIndent: 8,
              color: Colors.grey[400],
            ),
            ListTile(
              title: const Text('Songs'),
              onTap: () {
                AutoRouter.of(context).pushNamed(RouteConstants.songs);
              },
            ),
            Divider(
              indent: 8,
              endIndent: 8,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }
}