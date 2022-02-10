import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTranscation extends StatefulWidget {
  @override
  State<UserTranscation> createState() => _UserTranscationState();
}

class _UserTranscationState extends State<UserTranscation> {
  final List<Transaction> _userTransactionList = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'Men\s shirt', amount: 30, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'Men\s watches', amount: 100, date: DateTime.now()),
  ];
  void _addNewTransactions(String txTitle, double txAmount) {
    final newTx = Transaction(
        amount: txAmount,
        title: txTitle,
        date: DateTime.now(),
        id: DateTime.now().toString());

    setState(() {
      _userTransactionList.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      NewTransaction(_addNewTransactions),
      TransactionList(_userTransactionList),
    ]));
  }
}
