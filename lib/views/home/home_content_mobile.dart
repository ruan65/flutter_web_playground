import 'package:flutter/material.dart';
import 'package:flutter_web_playground/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_web_playground/widgets/course_details/course_detailes.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        CourseDetails(),
        SizedBox(height: 100),
        CallToAction('Join Course'),
      ],
    );
  }
}
