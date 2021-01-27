import 'package:flutter/material.dart';
import 'package:my_portfolio/sections/about_me.dart';
import 'package:my_portfolio/sections/end_section/EndSection.dart';
import 'package:my_portfolio/sections/project_section/projects.dart';
import 'package:my_portfolio/sections/top_section/navbar.dart';
import 'package:my_portfolio/sections/top_section/top_section_box.dart';

PageController controller = PageController();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        isAlwaysShown: true,
        controller: controller,
        child: CustomScrollView(
          controller: controller,
          slivers: [
            SliverAppBar(
              elevation: 30.0,
              pinned: true,
              floating: true,
              title: NavBar(),
              backgroundColor: Color(0xff009fb7),
            ),
            SliverList(delegate: SliverChildListDelegate([
              TopSectionBox(),
              AboutMe(),
              Projects(),
              EndSection(),
            ]),),
          ],
        ),
      ),
    );
  }

  void scrollToIndex(int index) {
    controller.animateToPage(index + 1, duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }

}

