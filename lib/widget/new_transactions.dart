import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: FlatButton(
                child: Text('Add Transaction'),
                onPressed: () {
                  addTx(titleController.text,
                      double.parse(amountController.text));
                },
                color: Colors.purple,
                textColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
