import 'package:expense_tracker/widgets/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work,
        title: 'first'),
    Expense(
        amount: 39.99,
        date: DateTime.now(),
        category: Category.food,
        title: 'second'),
  ];
  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
        title: const Text('Flutter Expense Tracker'),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          const Text('The chard'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
