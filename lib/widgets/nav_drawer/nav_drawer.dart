import 'package:flutter/material.dart';
import 'package:flutter_web_playground/routing/route_names.dart';

import 'nav_drawer_header.dart';
import 'nav_drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          NavDrawerItem('Episodes', Icons.videocam, episodesRoute),
          NavDrawerItem('File picker', Icons.help, aboutRoute),
          NavDrawerItem('Home', Icons.help, homeRoute),
        ],
      ),
    );
  }
}
