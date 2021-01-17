import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: Colors.blue,
      endRadius: 150.0,
      child: Material(
        elevation: 8.0,
        shape: CircleBorder(side: BorderSide(color: Color(0xff009cb4))),
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/images/profile.jpg'),
          radius: 100.0,
        ),
      ),
    );
  }
}
