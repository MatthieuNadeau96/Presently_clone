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
        fontFamily: 'LibreBaskerville',
        primaryColor: Color(0xffDBD1C7),
        accentColor: Colors.black,
        primaryTextTheme: TextTheme(
          title: TextStyle(color: Theme.of(context).primaryColor),
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
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 30,
          ),
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
          itemCount: 5,
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
