// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:personal_expenses_app/new_transactions.dart';
import 'package:personal_expenses_app/transaction.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses_app/transactions_list.dart';
import './transactions_list.dart';
import './user_transactions.dart';

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
        // final titleController=  TextEditingController();

        body: Container(
          child: UserTransaction(),
        ),
      ),
    );
  }
}
