import 'package:flutter/cupertino.dart';

class NavigationService {
  final navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(String routeName) {
    return navigatorKey.currentState.pushNamed(routeName);
  }

  goBack() => navigatorKey.currentState.pop();
}

