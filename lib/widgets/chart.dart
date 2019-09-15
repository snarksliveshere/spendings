import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class Chart extends StatelessWidget {

  final List<Transaction> _recentTransactions;


  Chart(this._recentTransactions);

  List<Map<String, Object>> get groupedTransactionValues {
    const int numDays = 7;
    return List.generate(numDays, (index) {
      final DateTime weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0.0;

      for (int i = 0; i < _recentTransactions.length; i++) {
        if (_recentTransactions[i].date.day == weekDay.day &&
            _recentTransactions[i].date.month == weekDay.month &&
            _recentTransactions[i].date.year == weekDay.year
        ) {
            totalSum += _recentTransactions[i].amount;
        }
      }

      return {
        'Day': DateFormat.E(weekDay),
        'amount': totalSum
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6.0,
      margin: EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[

        ],
      ),
    );
  }
}
