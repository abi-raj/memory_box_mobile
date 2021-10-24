import 'package:flutter/material.dart';
import 'package:hackharvard21/styles/text.dart';

class DailyTasksPage extends StatefulWidget {
  const DailyTasksPage({Key? key}) : super(key: key);

  @override
  _DailyTasksPageState createState() => _DailyTasksPageState();
}

class _DailyTasksPageState extends State<DailyTasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor.withOpacity(0.6),
      appBar: AppBar(
        title: Text('Daily Tasks'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                'Current Routine',
                style: textStyleWhite(FontWeight.w400, 21.0),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Daily Tasks',
              style: textStyleWhite(FontWeight.w400, 18.0),
            ),
            SizedBox(
              height: 20,
            ),
            row('8:00', 'Donepezil'),
            row('9:15', 'Read'),
            row('9:55', 'Go to sleep')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  Widget row(time, title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Text(time, style: textStyleWhite(FontWeight.w400, 16.0)),
          SizedBox(width: 20),
          Expanded(
            child: Container(
              height: 80,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Icon(
                    Icons.check_circle_outline,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(width: 10),
                  Text(title),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
