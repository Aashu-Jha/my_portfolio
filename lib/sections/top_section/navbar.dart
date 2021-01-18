import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Using layoutBuilder to make the NavBar responsive.
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth < 600) {
          //will return the mobile view widget
          return MobileNavBar();
        }else{
          //will return the desktop view widget if the width is greater than 600
          return DesktopNavBar();
        }
      },
    );
  }
}


class DesktopNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.animation,
              color: Colors.white,
              size: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    //TODO: navigation not done
                    },
                  child: Text('About',
                    style: kDesktopNavBarTextStyle,
                  ),
                ),
                SizedBox(width: 30.0),
                TextButton(
                  onPressed: () {
                    //TODO: navigation not done
                  },
                  child: Text('Projects',
                    style: kDesktopNavBarTextStyle,
                  ),
                ),
                SizedBox(width: 30.0),
                TextButton(
                  onPressed: () {
                    //TODO: navigation not done
                  },
                  child: Text('Resume',
                    style: kDesktopNavBarTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.animation,
              color: Colors.white,
              size: 25.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: null,
                  child: Text('About',
                    style: kMobileNavBarTextStyle,
                  ),
                ),
                SizedBox(width: 10.0),
                TextButton(
                  onPressed: null,
                  child: Text('Projects',
                    style: kMobileNavBarTextStyle,
                  ),
                ),
                SizedBox(width: 10.0),
                TextButton(
                  onPressed: null,
                  child: Text('Resume',
                    style: kMobileNavBarTextStyle,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


