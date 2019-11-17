import 'package:flutter/material.dart';
import 'package:flutter_web_playground/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_web_playground/widgets/course_details/course_detailes.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CourseDetails(),
        Expanded(
          child: Center(child: CallToAction('Join Course')),
        )
      ],
    );
  }
}
