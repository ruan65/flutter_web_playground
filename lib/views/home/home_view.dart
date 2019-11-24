import 'package:flutter/material.dart';
import 'package:flutter_web_playground/views/home/home_content_desktop.dart';
import 'package:flutter_web_playground/views/home/home_content_mobile.dart';
import 'package:flutter_web_playground/widgets/centered_view/centered_view.dart';
import 'package:flutter_web_playground/widgets/nav_drawer/nav_drawer.dart';
import 'package:flutter_web_playground/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInfo) {
      return Scaffold(
        backgroundColor: Colors.white,
//        drawer: sizingInfo.isMobile ? NavigationDrawer() : null,
        drawer: NavigationDrawer(),
        body: CenteredView(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
