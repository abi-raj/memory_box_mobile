import 'package:flutter/material.dart';


class YouPage extends StatelessWidget {
  const YouPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 100, bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'You are Otis',
              style: TextStyle(fontSize: 25),
            ),
            Container(
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://imgs.capitalfm.com/images/33129?crop=16_9&width=660&relax=1&signature=y_naIynKXpkGnX1p0-t-fW_d77E='),
                ),
              ),
              height: mediaQuery.height * 0.3,
              width: mediaQuery.width * 0.7,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 30, bottom: 30),
                child: Text(
                  'Your are the son of Jean Milburn. You live in the UK .You go to The Moordale High School',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}