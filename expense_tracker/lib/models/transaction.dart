import 'package:flutter/foundation.dart';

class Transaction {
  // class for a how a transaction should looks like [bluerpint basically]
  final String id;
  final String title;
  final double amount;
  final DateTime date;

  Transaction({
    @required this.id,
    @required this.title,
    @required this.amount,
    @required this.date,
  });
}
