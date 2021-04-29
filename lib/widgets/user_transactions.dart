
import './new_transactions.dart';
import './transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';

class Usertransactions extends StatefulWidget {
  @override
  _Usertransactionstate createState() => _Usertransactionstate();
}

class _Usertransactionstate extends State<Usertransactions> {
  final List<Transaction> _usertransaction = [
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'new SOCKS',
      amount: 49.99,
      date: DateTime.now(),
    ),
  ];

  void _addnewtransaction(String txtitle, double txamount) {
    final newtx = Transaction(
        id: DateTime.now().toString(),
        title: txtitle,
        amount: txamount,
        date: DateTime.now());

    setState(() {
      _usertransaction.add(newtx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Newtransaction(_addnewtransaction),
        Transactionlist(_usertransaction),
      ],
    );
  }
}
