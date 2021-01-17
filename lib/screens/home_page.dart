import 'package:flutter/material.dart';
import 'package:my_portfolio/sections/about_me.dart';
import 'package:my_portfolio/sections/end_section/EndSection.dart';
import 'package:my_portfolio/sections/project_section/projects.dart';
import 'package:my_portfolio/sections/top_section/top_section_box.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSectionBox(),
            AboutMe(),
            Projects(),
            EndSection(),
          ],
        ),
      ),
    );
  }
}

