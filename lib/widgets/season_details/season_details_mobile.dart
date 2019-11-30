import 'package:flutter/material.dart';
import 'package:flutter_web_playground/datamodels/season_details_model.dart';
import 'package:flutter_web_playground/styles/text_styles.dart';
import 'package:provider_architecture/provider_widget.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SeasonDetailsMobile extends ProviderWidget<SeasonDetailsModel> {

  @override
  Widget build(BuildContext context, SeasonDetailsModel model) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Column(
        children: <Widget>[
          Text(
            model.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            model.description,
            style: descriptionTextStyle(sizingInformation.deviceScreenType),
          ),
        ],
      ),
    );
  }
}
