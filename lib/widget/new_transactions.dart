import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final inputTitle = titleController.text;
    final inputAmount = double.parse(amountController.text);
    if (inputTitle.isEmpty || inputAmount <= 0) return;
    addTx(inputTitle, inputAmount);
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
