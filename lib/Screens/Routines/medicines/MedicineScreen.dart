import 'package:flutter/material.dart';
import 'package:hackharvard21/styles/text.dart';

class MdicinePage extends StatelessWidget {
  const MdicinePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Here are your pills,',
              style: textStyleBlack(FontWeight.w500, 25.0),
            ),
            SizedBox(
              height: 30,
            ),
            div(context),
            SizedBox(
              height: 20,
            ),
            div2(context),
          ],
        ),
      ),
    );
  }

  Widget div(context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '08:00',
            style: textStyleBlack(FontWeight.w300, 20.0),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.medical_services_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: Text('Aspirin'),
            subtitle: Text('Take 1 tablet'),
          ),
          ListTile(
            leading: Icon(
              Icons.water_sharp,
              color: Theme.of(context).primaryColor,
            ),
            title: Text('Water'),
            subtitle: Text('2 Glasses'),
          ),
        ],
      ),
    );
  }

  Widget div2(context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '09:55',
            style: textStyleBlack(FontWeight.w300, 20.0),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.medical_services_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: Text('Omega3'),
            subtitle: Text('Take 2 tablet'),
          ),
          ListTile(
            leading: Icon(
              Icons.water_sharp,
              color: Theme.of(context).primaryColor,
            ),
            title: Text('Water'),
            subtitle: Text('2 Glasses'),
          ),
        ],
      ),
    );
  }
}
