import 'package:flutter/material.dart';
import 'package:webproject/widgets/call_to_action/call_to_action.dart';
import 'package:webproject/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CourseDetails(),
        Expanded(
          child: Center(
            child: Column(
              children: [
//                Container(
//                    padding: EdgeInsets.symmetric(vertical: 160),
//                    child: CallToAction('Github')),
              ],
            ),
          ),
        )
      ],
    );
  }
}
