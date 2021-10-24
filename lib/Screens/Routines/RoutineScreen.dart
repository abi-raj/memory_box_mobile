import 'package:flutter/material.dart';
import 'package:hackharvard21/Models/quiz/catogories.dart';
import 'package:hackharvard21/styles/text.dart';

import '../category_page.dart';

class RoutinePage extends StatefulWidget {
  const RoutinePage({Key? key}) : super(key: key);

  @override
  _RoutinePageState createState() => _RoutinePageState();
}

class _RoutinePageState extends State<RoutinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text(
            'Harry,',
            style: textStyleBlack(FontWeight.w500, 25.0),
          ),
          Text(
            'Your Routine',
            style: textStyleBlack(FontWeight.w400, 20.0),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              card('Notes', Colors.orange[200], () {
                Navigator.pushNamed(context, '/notes');
              }),
              card('Daily Tasks', Colors.blue[200], () {
                Navigator.pushNamed(context, '/daily');
              }),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              card('Medicines', Colors.grey[500], () {
                Navigator.pushNamed(context, '/medicine');
              }),
              card('Daily Quiz', Colors.pink[200], () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CategoryPage(
                    category: categories.first,
                  );
                }));
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget card(title, color, onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 150,
        margin: EdgeInsets.all(5),
        child: Center(
          child: Text(
            title,
            style: textStyleWhite(
              FontWeight.normal,
              22.0,
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
