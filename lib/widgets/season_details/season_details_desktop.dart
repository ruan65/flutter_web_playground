import 'package:flutter/material.dart';
import 'package:flutter_web_playground/datamodels/season_details_model.dart';
import 'package:flutter_web_playground/styles/text_styles.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SeasonDetailsDesktop extends ProviderWidget<SeasonDetailsModel> {

  @override
  Widget build(BuildContext context, SeasonDetailsModel model) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            model.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          SizedBox(
            width: 50,
          ),
          Expanded(
            child: Text(
              model.description,
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          )
        ],
      ),
    );
  }
}
