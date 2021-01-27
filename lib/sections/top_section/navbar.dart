import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/screens/home_page.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Using layoutBuilder to make the NavBar responsive.
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth < 600) {
          //will return the mobile view widget
          return DesktopNavBar(isDesktop: false,);
        }else{
          //will return the desktop view widget if the width is greater than 600
          return DesktopNavBar();
        }
      },
    );
  }
}


class DesktopNavBar extends StatelessWidget {
  final bool isDesktop;

  DesktopNavBar({this.isDesktop = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {
                scrollToIndex(0);
              },
              icon: Icon(Icons.animation,
                color: Colors.white,
                size: isDesktop ? 30.0 : 25.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                      scrollToIndex(1);
                    },
                  child: Text('About',
                    style: isDesktop ? kDesktopNavBarTextStyle : kMobileNavBarTextStyle,
                  ),
                ),
                SizedBox(width: isDesktop ? 30.0 : 10),
                TextButton(
                  onPressed: () {
                    scrollToIndex(2);
                  },
                  child: Text('Projects',
                    style: isDesktop ? kDesktopNavBarTextStyle : kMobileNavBarTextStyle,
                  ),
                ),
                SizedBox(width: isDesktop ? 30.0 : 10),
                TextButton(
                  onPressed: () {
                    scrollToIndex(3);
                  },
                  child: Text('Resume',
                    style:isDesktop ? kDesktopNavBarTextStyle : kMobileNavBarTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void scrollToIndex(int index) {
    controller.animateToPage(index, duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }
}




