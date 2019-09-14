import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

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
              controller: this.titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
            ),
            FlatButton(
              onPressed: () {},
              textColor: Colors.purple,
              child: Text('Add Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
