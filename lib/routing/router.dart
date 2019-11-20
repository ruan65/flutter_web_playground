import 'package:flutter/material.dart';
import 'package:flutter_web_playground/routing/route_names.dart';
import 'package:flutter_web_playground/views/about/aboute_view.dart';
import 'package:flutter_web_playground/views/episodes/episodes_view.dart';
import 'package:flutter_web_playground/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(HomeView());
    case homeRoute:
      return _getPageRoute(AboutView());
    case homeRoute:
      return _getPageRoute(HomeView());
    default:
      return _getPageRoute(EpisodesView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
