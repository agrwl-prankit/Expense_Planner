import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Planner',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Expense Planner'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Card(
              child: Container(
                child: Text('Chart!'),
                width: 100,
                alignment: Alignment.center,
                color: Colors.lightBlue,
              ),
              elevation: 5,
            ),
            Card(
              child: Text('List of TX'),
            )
          ],
        ));
  }
}
