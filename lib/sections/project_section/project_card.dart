import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectCard extends StatelessWidget {

  final String projectTitle;
  final String projectDescription;
  final AssetImage projectImage;
  final Function onPress;

  ProjectCard({this.projectTitle, this.projectDescription, this.projectImage, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      constraints: BoxConstraints(minHeight: 200, minWidth: 400, maxWidth: 450),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        elevation: 5.0,
        shadowColor: Colors.grey,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14.0),
                  child: Image(
                    alignment: Alignment.center,
                    width: 120,
                    height: 120,
                    fit: BoxFit.fill,
                    image: projectImage,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal : 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 3, // space between underline and text
                          ),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(
                                color: Colors.blueAccent,  // Text colour here
                                width: 2.0, // Underline width
                              ))
                          ),

                          child: Text(
                            projectTitle,
                            style: TextStyle(
                              color: Colors.black, // Text colour here
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Cabin',
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: onPress,
                          hoverColor: Colors.grey[300],
                          splashRadius: 12.0,
                          splashColor: Colors.blueAccent,
                          icon: Icon(FontAwesomeIcons.github,
                           size: 25.0,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0, top: 5, left: 15, right: 10),
                    child: Text(projectDescription),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
