import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;

  const CenteredView({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.black26,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1000),
        child: child,
      ),
    );
  }
}
