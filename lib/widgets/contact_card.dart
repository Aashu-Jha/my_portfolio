import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class ContactCard extends StatelessWidget {

  final String title;
  final Color bgColor;
  final String imageTitle;

  ContactCard(this.title, this.bgColor, this.imageTitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(kDefaultPadding ),
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14.0),
        boxShadow: [kDefaultShadow],
      ),
      child: TextButton(
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(kDefaultPadding * 1),
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [BoxShadow(
                  offset: Offset(0, 20),
                  blurRadius: 30.0,
                  color: Colors.black.withOpacity(0.1),
                )]
              ),
              child: Image.asset(imageTitle, fit: BoxFit.fill,),
            ),
            SizedBox(height: kDefaultPadding,),
            Text(
              title,
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
