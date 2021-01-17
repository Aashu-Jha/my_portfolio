import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/sections/project_section/project_card.dart';
import 'package:my_portfolio/widgets/title_tile.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(minHeight: 500),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.fill),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 30),
                  child: TitleTile(title: 'Recent Projects'),
                ),
              ],
            ),
            Wrap(
              children: <Widget>[
                ProjectCard(
                  projectTitle: 'Clima Flutter',
                  projectDescription: 'I made this weather details fetching app. It show realtime-data weather of your location. Also, you can get the weather details of other cities as well by just typing the name of the city.',
                projectImage: AssetImage('assets/images/clima.png'),
                onPress: kLaunchClima,),
                ProjectCard(
                  projectTitle: 'Flash Chat',
                  projectDescription: 'In this project, I learnt about google firebase and cloud firestore. With the use of this app, user can chat with other user in realtime. User can register himself in this with firebase_auth.',
                  projectImage: AssetImage('assets/images/flashchat.png'),
                  onPress: kLaunchFlashChat,),
                ProjectCard(
                  projectTitle: 'CryptoCurrency Converter',
                  projectDescription: 'This is my first App. In this app, the user can get the current rate of three crypto currencies and convert them into more than 20 physical currencies. The data is fetched through api-calls.',
                  projectImage: AssetImage('assets/images/bitcoin.png',),
                  onPress: kLaunchBitCoin,
                ),
                ProjectCard(
                  projectTitle: 'Todo Flutter',
                  projectDescription: 'This is a simple todo flutter app. In this app, user can easily add his task, mark it done or not, and also delete task with long press on task. With this, i learnt about flutter state management.',
                  projectImage: AssetImage('assets/images/todo.png'),
                  onPress: kLaunchTodo,
                ),
              ],
            ),
            SizedBox(height: 150,),
          ],
        ),
      ),
    );
  }
}
