import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.10,
          left: MediaQuery.of(context).size.width * 0.04,
          right: MediaQuery.of(context).size.width * 0.04,
          bottom: 0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
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
                ],
              ),
            ), // TITLE SECTION
            Divider(
              height: 0,
              thickness: 3,
              color: Colors.black,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        labelText: 'What are you grateful for?',
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          // fontFamily: 'Trajan Pro',
                          color: Color(0xff89827C),
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          child: Icon(
                            Icons.lightbulb_outline,
                            size: 30,
                          ),
                          onTap: () {},
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.5),
                          ),
                          onPressed: () {},
                          child: Text(
                            'SAVE',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Trajan Pro',
                              letterSpacing: 1,
                            ),
                          ),
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                bottom: 0,
              ),
              child: Divider(
                height: 0,
                thickness: 3,
                color: Colors.black,
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.13,
              width: double.infinity,
              child: Center(
                child: Text(
                  '\"The root of joy is gratefulness\" \n David Steindl-Rast',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff89827C),
                    // fontFamily: 'Trajan Pro',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// WTF did you do dood
// i think ill know
// tried to make the colored section mediaqueries
// fix that
