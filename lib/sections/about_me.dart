import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/avatar.dart';
import 'package:my_portfolio/widgets/title_tile.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 700) {
          return DesktopAboutMe(isMobile: true,);
        }else{
          return DesktopAboutMe();
        }
      },
    );
  }
}

class DesktopAboutMe extends StatelessWidget {
  final bool isMobile;
  DesktopAboutMe({this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TitleTile(title: 'About Me',),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(child: Text("Hello I'm Aashish Jha, a student of Maharaja Agrasen Institute Of Technology, New Delhi.  A passionate self-taught programmer/developer from India. Currently, I'm learning Data Structures & Algorithms to strong my core and also developing apps/sites with flutter. From past 1 month, I'm learning flutter and it's feels great to work on it and developing apps. Not just a programmer but i also play outdoor games like volleyball, cricket. I'm a lazy who believes in smart work rather than just hard work and also I'm a night bird. Wanna talk to me? you can call me any time at night but if urgent:) \n Quote: The idea is to die young as long as possible!!",
              style: kSecondaryTextStyle,)),
              SizedBox(width: 20.0,),
              isMobile ? SizedBox() : Avatar(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
            isMobile ? Avatar() : SizedBox(),
          ]),
          SizedBox(height: 80,)
        ],
      ),
    );
  }
}




