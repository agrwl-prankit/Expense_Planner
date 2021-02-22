import 'file:///D:/Flutter_project/expense_planner/lib/model/transaction.dart';
import 'package:expense_planner/widget/new_transactions.dart';
import 'package:expense_planner/widget/transaction_list.dart';
import 'package:expense_planner/widget/user_transactions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Planner',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [];
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Planner'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly, // for vertically gap between each widgets
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[UserTransaction()],
      ),
    );
  }
}
