import 'package:flutter/material.dart';
import 'package:flutter_web_playground/routing/router.dart';
import 'package:flutter_web_playground/service_locator.dart';
import 'package:flutter_web_playground/services/navigation_service.dart';
import 'package:flutter_web_playground/widgets/centered_view/centered_view.dart';
import 'package:flutter_web_playground/widgets/nav_drawer/nav_drawer.dart';
import 'package:flutter_web_playground/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInfo) => Scaffold(
              backgroundColor: Colors.white,
              drawer: sizingInfo.isMobile ? NavigationDrawer() : null,
              body: CenteredView(
                child: Column(
                  children: <Widget>[
                    NavigationBar(),
                    Expanded(
                        child: Navigator(
                      key: locator<NavigationService>().navigatorKey,
                      onGenerateRoute: generateRoute,
                    ))
                  ],
                ),
              ),
            ));
  }
}
