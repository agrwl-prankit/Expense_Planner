import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    final inputTitle = titleController.text;
    final inputAmount = double.parse(amountController.text);
    if (inputTitle.isEmpty || inputAmount <= 0) return;
    widget.addTx(inputTitle, inputAmount);
    Navigator.of(context).pop();
  }

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
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: FlatButton(
                child: Text('Add Transaction'),
                onPressed: submitData,
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
