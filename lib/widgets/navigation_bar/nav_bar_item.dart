import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;

  const NavBarItem({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
