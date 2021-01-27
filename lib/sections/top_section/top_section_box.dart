import 'package:flutter/material.dart';
import 'package:my_portfolio/sections/top_section/introduction.dart';
import 'package:my_portfolio/sections/top_section/navbar.dart';

class TopSectionBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: double.infinity,),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/coverbackground.png'),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: <Widget>[
          // NavBar(),
          SizedBox(height: 120,),
          Introduction(),
          SizedBox(height: 50,)
        ],
      ),
    );
  }
}
