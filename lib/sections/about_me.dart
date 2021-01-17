import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/avatar.dart';
import 'package:my_portfolio/widgets/title_tile.dart';

class AboutMe extends StatelessWidget {
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
              Flexible(child: Text("Hello I'm Pawan Kumar, a Google Developer Expert for Flutter, Dart & Web Tech. I am also a youtuber having MTechViral youtube channel where I make tutorials for technology. To the outside world I am just an ordinary software developer but secretly with the help of my MacBook I fight bugs and create awesome content for the community. When I was a child I didn’t have many resources to learn new things so I decided to make a channel to help others in learning new awesome things. And I’ll continue to become the better version of myself.",
              style: kSecondaryTextStyle,)),
              SizedBox(width: 20.0,),
              Avatar(),
            ],
          ),
          SizedBox(height: 80,)
        ],
      ),
    );
  }
}


