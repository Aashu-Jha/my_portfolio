import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/home_page.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        // We set Poppins as our default font.
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
