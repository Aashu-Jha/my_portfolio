import 'package:flutter/material.dart';
import 'package:my_portfolio/sections/navbar.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:my_portfolio/constants.dart;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(maxWidth: double.infinity, maxHeight: 600),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/coverbackground.png'),
          fit: BoxFit.cover),
      ),
        child: Column(
          children: <Widget>[
            NavBar(),

          ],
        ),
    )
    );
  }
}
