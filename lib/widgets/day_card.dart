import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'April 15 2020',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 6),
            Text(
              'What are you grateful for today?',
              style: TextStyle(
                color: Color(0xff89827C),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
