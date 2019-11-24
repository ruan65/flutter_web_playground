import 'package:flutter/material.dart';
import 'package:flutter_web_playground/service_locator.dart';
import 'package:flutter_web_playground/services/navigation_service.dart';

class NavDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navPath;

  const NavDrawerItem(this.title, this.icon, this.navPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navPath);
        Navigator.of(context).pop();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 30, top: 60),
        child: Row(
          children: <Widget>[
            Icon(icon),
            SizedBox(width: 30),
            Text(title),
          ],
        ),
      ),
    );
  }
}
