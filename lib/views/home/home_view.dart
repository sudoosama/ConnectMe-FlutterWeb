import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:webproject/views/home/home_content_desktop.dart';
import 'package:webproject/views/home/home_content_mobile.dart';
import 'package:webproject/widgets/call_to_action/call_to_action.dart';
import 'package:webproject/widgets/centered_view/centered_view.dart';
import 'package:webproject/widgets/navigation_bar/navigation_bar.dart';
import 'package:webproject/widgets/navigation_drawer/navigation_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body:  Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/background.jpg'),
                fit: BoxFit.fill)
          ),
        ),
            CenteredView(
              child: Column(
                children: <Widget>[
                  NavigationBar(),
                  Expanded(
                      child: ScreenTypeLayout(
                    mobile: HomeContentMobile(),
                    desktop: HomeContentDesktop(),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
