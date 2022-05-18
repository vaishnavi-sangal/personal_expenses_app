import 'package:flutter/material.dart';
import 'package:personal_expenses_app/new_transactions.dart';
import './transaction.dart';
import 'package:intl/intl.dart';
import './user_transactions.dart';

class TRansactionList extends StatelessWidget {
  TRansactionList({Key? key}) : super(key: key);

  final List<Transaction> _UserTransaction = [
    Transaction(id: '1', name: 'shoes', price: 500, time: DateTime.now()),
    Transaction(id: '2', name: 'socks', price: 800, time: DateTime.now()),
    Transaction(id: '3', name: 'slippers', price: 900, time: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: _UserTransaction.map((id) {
            return Card(
              child: Row(
                children: <Widget>[
                  Text(id.name),
                  Column(
                    children: <Widget>[
                      Text('\$${id.price}'),
                      Text(DateFormat.yMMMMd().format(id.time)),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
