import 'package:flutter/material.dart';

class Newtransaction extends StatelessWidget {
  final Function addtx;
  final titlecontroller=TextEditingController();
  final amountcontroller=TextEditingController();

  Newtransaction(this.addtx);
  
  @override
  Widget build(BuildContext context) {
    return Card(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'title'),
                    controller: titlecontroller,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'amount'),
                    controller: amountcontroller,
                  ),
                  FlatButton(
                    child: Text('add transaction'),
                    onPressed: () {
                      addtx(titlecontroller.text,double.parse(amountcontroller.text));
                    },
                    textColor: Colors.purple,
                  )
                ],
              ),
            ),
            elevation: 20,
          );
  }
}