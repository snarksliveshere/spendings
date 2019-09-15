import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function _addTx;
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  NewTransaction(this._addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              cursorColor: Colors.purple,
              decoration: InputDecoration(labelText: 'Title'),
              controller: _titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: _amountController,
            ),
            FlatButton(
              onPressed: () {
                _addTx(
                  _titleController.text,
                  double.parse(_amountController.text));
                },
              textColor: Colors.purple,
              child: Text('Add Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
