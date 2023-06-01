import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';

import '../models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,

      /// item cound = expenses list length
      itemBuilder: (ctx, index) => ExpenseItem(
        expenses[index],
      ),

      ///=> means return
      /// with annon func ctx and index value provaidet by flutter auto
    );
  }
}
