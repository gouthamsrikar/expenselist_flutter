import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class Transactionlist extends StatelessWidget {
   final List<Transaction> transactions;

   Transactionlist(this.transactions);
  
 
  @override
  Widget build(BuildContext context) {
    return Column(
            children: transactions.map((tx) {
              return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$ ${tx.amount}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple),
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            tx.title,
                            style: TextStyle(
                              color: Colors.red,
                            ),
                          ),
                          Text(DateFormat.yMMMd().format(tx.date)),
                        ],
                      )
                    ],
                  ));
            }).toList(),
          );
  }
}