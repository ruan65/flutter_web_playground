import 'package:flutter/material.dart';
import 'package:flutter_web_playground/routing/route_names.dart';

import 'nav_bar_item.dart';
import 'nav_bar_logo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem('Episodes', episodesRoute),
              SizedBox(width: 20),
              NavBarItem('File picker', aboutRoute),
              SizedBox(width: 20),
              NavBarItem('Home', homeRoute),
            ],
          )
        ],
      ),
    );
  }
}
