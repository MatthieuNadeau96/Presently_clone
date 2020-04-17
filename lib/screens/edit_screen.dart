import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'I am grateful for',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Divider(
                height: 0,
                thickness: 3,
                color: Colors.black,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: 'What are you grateful for?',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.lightbulb_outline,
                      size: 30,
                    ),
                    onTap: () {},
                  ),
                  FlatButton(
                    onPressed: () {},
                    child: Text(
                      'SAVE',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    color: Colors.black,
                  ),
                ],
              ),
              Divider(
                height: 0,
                thickness: 3,
                color: Colors.black,
              ),
            ],
          ),
        ));
  }
}
