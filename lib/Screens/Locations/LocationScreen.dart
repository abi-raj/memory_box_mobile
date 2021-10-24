import 'package:flutter/material.dart';
import 'package:hackharvard21/styles/text.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationsPage extends StatefulWidget {
  const LocationsPage({Key? key}) : super(key: key);

  @override
  _LocationsPageState createState() => _LocationsPageState();
}

class _LocationsPageState extends State<LocationsPage> {
  final String myLoc =
      "https://www.google.com/maps/search/?api=1&query=" + "40.7128,74.0060";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Locations',
          style: textStyleWhite(FontWeight.w400, 20.0),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            onTap: () => _launchURL(myLoc),
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
            leading: Icon(
              Icons.home,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Home',
              style: textStyleBlack(FontWeight.w400, 20.0),
            ),
            subtitle: Text(
              'East road,West street',
              style: textStyleBlack(FontWeight.w300, 16.0),
            ),
            trailing: PopupMenuButton(
              itemBuilder: (_) => const <PopupMenuItem<String>>[
                PopupMenuItem<String>(
                    child: Text('Remove label'), value: 'remove'),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              _launchURL(myLoc);
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
            leading: Icon(
              Icons.local_hospital_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: Text(
              'Dr. Strange',
              style: textStyleBlack(FontWeight.w400, 20.0),
            ),
            subtitle: Text(
              'Evan Park,Peter Street',
              style: textStyleBlack(FontWeight.w300, 16.0),
            ),
            trailing: PopupMenuButton(
              itemBuilder: (_) => const <PopupMenuItem<String>>[
                PopupMenuItem<String>(
                    child: Text('Remove label'), value: 'remove'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(url) async {
    await launch(url);
  }
}
