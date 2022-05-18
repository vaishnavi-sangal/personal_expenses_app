import 'package:flutter/material.dart';
import 'package:personal_expenses_app/new_transactions.dart';
import 'package:personal_expenses_app/transaction.dart';
import 'package:personal_expenses_app/transactions_list.dart';
import './main.dart';

class UserTransaction extends StatefulWidget {
  @override
  State<UserTransaction> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> Trans = [
    Transaction(id: '1', name: 'shoes', price: 500, time: DateTime.now()),
    Transaction(id: '2', name: 'socks', price: 800, time: DateTime.now()),
    Transaction(id: '3', name: 'slippers', price: 900, time: DateTime.now()),
  ];
  void _addNewTransaction(String txtile, double txamount) {
    final newTx = Transaction(
        id: DateTime.now.toString(),
        name: txtile,
        price: txamount,
        time: DateTime.now());

    setState(() {
      Trans.add(newTx);
    });

    @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          NewTransaction(_addNewTransaction),
          TRansactionList(),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
