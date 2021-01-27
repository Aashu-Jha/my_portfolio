import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'default_button.dart';

class HireMeCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth < 500) {
          //will return the mobile view widget
          return DesktopHireMeCard(isDesktop: false,);
        }else{
          //will return the desktop view widget if the width is greater than 600
          return DesktopHireMeCard();
        }
      },
    );
  }
}

class DesktopHireMeCard extends StatelessWidget {
  final bool isDesktop;

  DesktopHireMeCard({this.isDesktop = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      padding: EdgeInsets.all(kDefaultPadding * 1),
      constraints: BoxConstraints(maxWidth: 700),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [kDefaultShadow],
      ),
      child: isDesktop ? Row(
        children: [
          HireMeImage(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: SizedBox(
              height: 50,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: HireMeTitle(),
          ),

          DefaultButton(
            text: "Hire Me!",
            imageSrc: "assets/images/hand.png",
            press: () {},
          )
        ],

      ):
          Column(
            children: <Widget>[
              HireMeImage(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: SizedBox(
                  height: 30,
                  child: Divider(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: HireMeTitle(),
              ),
              DefaultButton(
                text: "Hire Me!",
                imageSrc: "assets/images/hand.png",
                press: () {},
              )
            ],
          ),
    );
  }
}

class HireMeImage extends StatelessWidget {
  const HireMeImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/email.png",
      height: 50,
      width: 50,
    );
  }
}

class HireMeTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Starting New Project?",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: kDefaultPadding / 3),
        Text(
          "Wanna collaborate on a new project",
          style: TextStyle(fontWeight: FontWeight.w200),
        )
      ],
    );
  }
}


