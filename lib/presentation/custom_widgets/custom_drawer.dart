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
                  ),),
            ),
            ListTile(
              title: const Text('Characters'),
              onTap: () {
                AutoRouter.of(context).pushNamed(RouteConstants.overview);
              },
            ),
            Divider(
              indent: 8,
              endIndent: 8,
              color: Colors.grey[400],
            ),
            ListTile(
              title: const Text('Playlists'),
              onTap: () {
                AutoRouter.of(context).pushNamed(RouteConstants.playlists);
              },
            ),
            Divider(
              indent: 8,
              endIndent: 8,
              color: Colors.grey[400],
            ),
            ListTile(
              title: const Text('Sample'),
              onTap: () {
                AutoRouter.of(context).pushNamed(RouteConstants.sample);
              },
            ),
          ],
        ),
      ),
    );
  }
}