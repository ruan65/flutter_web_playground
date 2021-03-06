import 'package:flutter/material.dart';
import 'package:flutter_web_playground/datamodels/navbar_item_model.dart';
import 'package:provider_architecture/provider_widget.dart';

class NavBarItemTabletDesktop extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Text(
      model.title,
      style: TextStyle(fontSize: 18),
    );
  }
}
