import 'package:flutter/material.dart';
import './user_Transaction.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final TitleController = TextEditingController();
  final AmountController = TextEditingController();

  NewTransaction(this.addTx);
// final Function addTx;
//   NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      width: double.infinity,
      // padding: EdgeInsets.all(6),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
        TextField(
          decoration: InputDecoration(labelText: "Title"),
          controller: TitleController,
        ),
        TextField(
            decoration: InputDecoration(labelText: "Amount"),
            controller: AmountController),
        FlatButton(
          child: Text("Add Transaction"),
          textColor: Colors.purple,
          onPressed: () {
            // print(TitleController.text);
            // print(AmountController.text);
            addTx(TitleController.text, double.parse(AmountController.text));
          },
        ),
      ]),
    ));
  }
}
