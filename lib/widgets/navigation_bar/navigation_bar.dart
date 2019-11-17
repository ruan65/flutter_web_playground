import 'package:flutter/material.dart';
import 'package:flutter_web_playground/widgets/navigation_bar/nav_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'nav_bar_mobile.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavBarMobile(),
      tablet: NavBarTabletDesktop(),
    );
  }
}
