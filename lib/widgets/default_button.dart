import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.imageSrc,
    this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(kDefaultPadding / 3),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFE8F0F9),
      ),

      child: TextButton(
        onPressed: kLaunchLinkedInURL,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imageSrc, height: 30),
            SizedBox(width: kDefaultPadding),
            Text(text),
          ],
        ),
      ),
    );
  }
}