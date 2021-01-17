import 'package:flutter/material.dart';

class TitleTile extends StatelessWidget {

  final String title;
  final double fontSize;

  TitleTile({@required this.title, this.fontSize = 28});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 3, // space between underline and text
      ),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(
            color: (fontSize == 28) ? Colors.blueAccent : Colors.black87,  // Text colour here
            width: 3.0, // Underline width
          ))
      ),

      child: Text(
        title,
        style: TextStyle(
          color: Colors.black, // Text colour here
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
