import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/contact_icon.dart';


class Introduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth < 600) {
          //will return the mobile view widget
          return MobileIntroduction();
        }else{
          //will return the desktop view widget if the width is greater than 600
          return DesktopIntroduction();
        }
      },
    );
  }
}

class DesktopIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          IntroductionColumn(),
          IntroductionRow(),
        ],
      ),
    );
  }
}

class IntroductionRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ContactIcon(iconData: FontAwesomeIcons.github, onPress: kLaunchGithubURL,),
        SizedBox(width: 30.0,),
        ContactIcon(iconData: FontAwesomeIcons.linkedin, onPress: kLaunchLinkedInURL,),
        SizedBox(width: 30.0,),
        ContactIcon(iconData: Icons.quick_contacts_mail_rounded, onPress: kLaunchMailURL,),
        SizedBox(width: 30.0,),
        ContactIcon(iconData: FontAwesomeIcons.telegram, onPress: kLaunchTelegramURL, ),
        SizedBox(width: 30.0,),
        ContactIcon(iconData: FontAwesomeIcons.code, onPress: kLaunchLeetCodeURL,),
      ],
    );
  }
}

class IntroductionColumn extends StatelessWidget {
  final bool isMobile;

  IntroductionColumn({this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text("Hi, I'm Aashish",
          style: TextStyle(
            fontSize: isMobile ? 40 : 70.0,
            fontWeight: FontWeight.bold,
            fontFamily: "Cabin",
          ),
          ),
        SizedBox(
          height: isMobile ? 80.0 : 150.0,
          child: RotateAnimatedTextKit(
            repeatForever: true,
            text: ['Flutter' , 'Dart', 'Android', 'Java', 'Android Studio'],
            textStyle: TextStyle(fontSize: isMobile ? 30.0 : 50.0, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}


class MobileIntroduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          IntroductionColumn(isMobile: true,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ContactIcon(iconData: FontAwesomeIcons.github, onPress: kLaunchGithubURL,isMobile: true, ),
              ContactIcon(iconData: FontAwesomeIcons.linkedin, onPress: kLaunchLinkedInURL,isMobile: true, ),
              ContactIcon(iconData: Icons.mail, onPress: kLaunchMailURL, isMobile: true,),
              ContactIcon(iconData: FontAwesomeIcons.telegram, onPress: kLaunchTelegramURL,isMobile: true, ),
              ContactIcon(iconData: FontAwesomeIcons.code, onPress: kLaunchLeetCodeURL,isMobile: true, ),
            ],
          ),
        ],
      ),
    );
  }
}
