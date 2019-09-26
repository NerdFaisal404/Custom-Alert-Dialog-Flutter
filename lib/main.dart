import 'package:flutter/material.dart';

import 'CustomDialog.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Custom Alert Dialog',
        ),
      ),
      body: Center(
        child: new RaisedButton(
          padding: EdgeInsets.all(0.0),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => CustomDialog(
                title: "Success",
                description:
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                buttonText: "Okay",
              ),
            );
          },
          textColor: Colors.white,
          color: Colors.blue,
          child: Text('Open Dialog'),
        ),
      ),
    );
  }
}
