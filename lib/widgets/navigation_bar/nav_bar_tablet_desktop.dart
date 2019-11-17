import 'package:flutter/material.dart';

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
              NavBarItem(title: 'Episodes'),
              SizedBox(width: 20),
              NavBarItem(title: 'About'),
              SizedBox(width: 20),
              NavBarItem(title: 'Help')
            ],
          )
        ],
      ),
    );
  }
}
