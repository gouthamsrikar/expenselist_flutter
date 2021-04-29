
import 'package:expenselist_app/widgets/user_transactions.dart';
import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
 
  
//String titleinput;
// String amountinput;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter app'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            color: Colors.blue[100],
            child: Container(
              width: double.infinity,
              child: Text('chart'),
            ),
            elevation: 20,
          ),
          Usertransactions(),
          
        ],
      ),
    );
  }
}
