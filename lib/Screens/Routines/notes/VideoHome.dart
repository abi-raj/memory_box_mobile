import 'package:flutter/material.dart';

class VideoNotesPage extends StatefulWidget {
  const VideoNotesPage({Key? key}) : super(key: key);

  @override
  _VideoNotesPageState createState() => _VideoNotesPageState();
}

class _VideoNotesPageState extends State<VideoNotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
      ),
      body: ListView(
        children: [
          card(
              'https://media.istockphoto.com/photos/admiring-birthday-candles-picture-id524889574?k=6&m=524889574&s=612x612&w=0&h=bu3qxRUlws5a_d0M80KQ_TE45w8goBzys1oqVQGIwxE=',
              'Birthday Party',
              '2020-11-11'),
          card(
              'https://www.tripsavvy.com/thmb/I2PeYOSYosY1DGV4X1ZRLdqUoN0=/2000x1500/filters:fill(auto,1)/car-traveling-along-winding-road--maui--hawaii--america--usa-737142515-9d7096b173654472968075d805273c8f.jpg',
              'Friends Road Trip',
              '2020-11-12')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget card(image, name, who) {
    return InkWell(
      child: Container(
        width: 150,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(
                1.0,
                1.0,
              ),
              blurRadius: 15.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstATop),
                      image: NetworkImage(
                        image,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Center(
                    child: Icon(
                      Icons.play_circle_outline,
                      size: 40,
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              title: Center(child: Text(name)),
              subtitle: Center(child: Text(who)),
            ),
          ],
        ),
      ),
    );
  }
}
