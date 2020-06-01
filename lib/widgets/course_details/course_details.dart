import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webproject/widgets/call_to_action/call_to_action.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? TextAlign.left
                : TextAlign.center;
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 30
                : 60;

        double descriptionSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Mobile
                ? 10
                : 15;

        return Container(
          //  height: 500,
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Text(
                  'Hassan Osama\nFlutter Dev.',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      height: 0.9,
                      //  color: Colors.white,
                      fontSize: titleSize),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'By profession full stack developer and tech geek. My passion '
                'to design interactive GUI, always ready to learn and serve my community w'
                'ith problem solving ability. I love to solve real '
                'world problem and create startup applications for modern world to perform task easily. ',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7,
                ),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Row(
                children: [
                  InkWell(
                      onTap: () =>
                          launch('https://github.com/sudoosama'),
                      child: CallToAction('Github')),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () =>
                        launch('https://www.linkedin.com/in/sudoosama'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 15),
                      child: Text(
                        'LinkedIn',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF0e76a8),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () =>
                        launch('https://twitter.com/sudoosama'),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 15),
                      child: Text(
                        'Twitter',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF00acee),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              )),
            ],
          ),
        );
      },
    );
  }
}
