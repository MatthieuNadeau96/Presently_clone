import 'package:flutter/material.dart';

import './widgets/day_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xffDBD1C7),
        accentColor: Colors.black,
        primaryTextTheme: TextTheme(
          title: TextStyle(
            color: Color(0xff89827C),
          ),
        ),
        textTheme: TextTheme(
          display1: TextStyle(
            fontSize: 30,
            fontFamily: 'Caudex',
            fontWeight: FontWeight.bold,
            color: Color(0xffDBD1C7),
          ),
          display2: TextStyle(
            fontSize: 30,
            fontFamily: 'Caudex',
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          title: TextStyle(
            fontFamily: 'Caudex',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          body1: TextStyle(),
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        backgroundColor: Theme.of(context).accentColor,
        leading: Icon(
          Icons.search,
          color: Theme.of(context).primaryColor,
          size: 30,
        ),
        title: Text(
          'Presently',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.display1,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
            color: Theme.of(context).primaryColor,
          )
        ],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return DayCard();
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.calendar_today,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
