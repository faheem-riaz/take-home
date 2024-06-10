import 'package:take_home/core/components/app_image_viewer.dart';
import 'package:take_home/core/enums/routing_indexes.dart';
import 'package:take_home/core/theme/app_theme.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: context.theme.primaryColor,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: AppImage.network(
                    imageUrl: '',
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text('Kanban Board'),
            onTap: () {
              context.tabsRouter.setActiveIndex(RoutingIndexes.kanban.index);
              Scaffold.of(context).closeDrawer();
            },
          ),
          ListTile(
            title: const Text('History'),
            onTap: () {
              context.tabsRouter.setActiveIndex(RoutingIndexes.history.index);
              Scaffold.of(context).closeDrawer();
            },
          ),
        ],
      ),
    );
  }
}
