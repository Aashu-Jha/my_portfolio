import 'package:flutter/material.dart';
import 'package:my_portfolio/extensions/hover_extensions.dart';

class ContactIcon extends StatelessWidget {

  final IconData iconData;
  final Function onPress;
  final bool isMobile;

  ContactIcon({@required this.iconData, this.onPress, this.isMobile = false});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: BoxConstraints.expand(width: 80, height: 80),
      hoverColor: Colors.blueAccent,
        icon:
        Center(
          child: Icon(
              iconData,
              size: isMobile ? 30.0 : 60.0 ,
              color: Colors.white),
        ),
        onPressed: onPress
    ).moveUpOnHover;
  }
}
