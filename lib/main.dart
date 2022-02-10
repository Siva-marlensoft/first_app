
import 'package:first_app/widgets/user_Transaction.dart';
import 'package:flutter/material.dart';
import 'package:first_app/models/transaction.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> Transactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'Men\s shirt', amount: 30, date: DateTime.now()),
    Transaction(
        id: 't1', title: 'Men\s watches', amount: 100, date: DateTime.now()),
  ];
  final TitleController = TextEditingController();
  final AmountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            // Card(
            //   child: Container(
            //     width:100,
            //    child: Text("Chart!"),
            //    ),
            //   elevation: 5,
        
            //   ),
            Container(
              // width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text("Chart!"),
                elevation: 5,
              ),
            ),
            UserTranscation(),
            
          ]),
        ));
  }
}

class TextEditController {}
