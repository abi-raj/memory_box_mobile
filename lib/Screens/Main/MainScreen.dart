import 'package:flutter/material.dart';
import 'package:hackharvard21/styles/text.dart';
import 'package:hackharvard21/utils/notificationsApi.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                header(),
                SizedBox(height: 20),
                hello(),
                SizedBox(height: 15),
                howdoing(),
                SizedBox(height: 70),
              ],
            ),
          ),
          Expanded(
            child: ellipContainer(),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_on_outlined,
                size: 30,
              ),
            ),
            Text(
              "NY, The States ",
              style: textStyleBlack(
                FontWeight.w300,
                18.0,
              ),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                NotificationsApi.imageNotification();
              },
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/you');
              },
              icon: Icon(
                Icons.supervised_user_circle,
                size: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget hello() {
    return Text(
      'Hello Harry !',
      style: textStyleBlack(FontWeight.w500, 25.0),
    );
  }

  Widget howdoing() {
    return Text(
      'See how you are doing today',
      style: textStyleBlack(FontWeight.w300, 18.0),
    );
  }

  Widget ellipContainer() {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 30),
          Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today's Task",
                    style: textStyleWhite(FontWeight.bold, 20.0)),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    value: 0.2,
                    minHeight: 10,
                    backgroundColor: Colors.grey,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '1 of 10 tasks Completed',
                  style: textStyleWhite(FontWeight.normal, 13.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Text(
            "You are doing great !",
            style: textStyleWhite(FontWeight.normal, 18.0),
          ),
          SizedBox(height: 15),
          statContainer(),
        ],
      ),
      decoration: new BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.vertical(
            top: Radius.elliptical(MediaQuery.of(context).size.width, 150.0)),
      ),
    );
  }

  Widget smallBox(count, title) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '$count',
            style: textStyleBlack(FontWeight.bold, 25.0),
          ),
          Text(title),
        ],
      ),
      height: 75,
      width: 75,
      decoration: new BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }

  Widget statContainer() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Statistics',
                    style: textStyleBlack(FontWeight.bold, 15.0)),
                Text('This week'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                smallBox(11, 'Done'),
                smallBox(4, 'Pending'),
                smallBox(0, 'Missed'),
              ],
            ),
          ],
        ),
      ),
      height: 150,
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[100],
      ),
    );
  }
}
