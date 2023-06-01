import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _saveTitleInput(String inputValue) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            onChanged: _saveTitleInput,
            maxLength: 50,
            decoration: const InputDecoration(
              label: Text('title'),
            ),
          ),
          const TextField(
            keyboardType: TextInputType.number,
            maxLength: 4,
            decoration: InputDecoration(
              prefixText: '\$',
              label: Text('amount '),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                style: const ButtonStyle(),
                onPressed: () {
                  print('cancelled');
                },
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController);
                },
                child: const Text('Save Expense'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
