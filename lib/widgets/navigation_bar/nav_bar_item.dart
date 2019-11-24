import 'package:flutter/material.dart';
import 'package:flutter_web_playground/services/navigation_service.dart';

import '../../service_locator.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String routePath;

  const NavBarItem(this.title, this.routePath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(routePath);
      },
      child: Container(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
