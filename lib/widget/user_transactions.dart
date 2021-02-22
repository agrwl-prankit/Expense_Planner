import 'package:expense_planner/model/transaction.dart';
import 'package:expense_planner/widget/new_transactions.dart';
import 'package:expense_planner/widget/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction('t1', 'New Shoes', 69.99, DateTime.now()),
    Transaction('t2', 'Weekly Grocery', 16.15, DateTime.now())
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        DateTime.now().toString(), txTitle, txAmount, DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(_addNewTransaction), TransactionList(_userTransaction)],
    );
  }
}
