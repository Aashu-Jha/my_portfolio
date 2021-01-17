import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/contact_card.dart';
import 'package:my_portfolio/widgets/hire_me_card.dart';
import 'package:my_portfolio/widgets/title_tile.dart';

class EndSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: kDefaultPadding * 2),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/bgEnd.png'),
        )
      ),
      child: Column(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0, -70),
              child: HireMeCard()
          ),
          Wrap(
            spacing: 20.0,
            alignment: WrapAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: ContactCard('My Card', Colors.pinkAccent[100], 'assets/images/hand.png'),
              ),
              ContactCard('Download CV', Colors.lightBlueAccent[100], 'assets/images/download.png'),
            ],
          ),
          SizedBox(height: 50.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TitleTile(title: 'Built By', fontSize: 20.0,),
              Text('@Aashish Jha',
                style: TextStyle(
                  fontSize: 25.0,
                  fontFamily: 'Cabin',
                  fontWeight: FontWeight.w600,
                  shadows: [kDefaultShadow],
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                ),),
              Padding(
                padding: const EdgeInsets.only(top: 5.0 , right: 2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Text>[
                    Text('References (Github ID): iampawan & abuanwar072'),
                  ],
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}
