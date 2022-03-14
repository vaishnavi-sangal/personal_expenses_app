// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  //var home;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ShowDebugModeBanner:false,
      home: Scaffold(
        appBar: AppBar(title: Text('Personal Expenses App')),
        body: Card(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'name'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'password'),
              ),
              ElevatedButton(
                child: Text('login'),
                onPressed: () {
                  Text('login successfully');
                },
              ),
            ],
            // ElevatedButton(onPressed:null,child: Text('login'),),
          ),
        ),
      ),
    );
  }
}
