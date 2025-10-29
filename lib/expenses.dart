import 'package:expense_tracker/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});

  State<Expenses> createState(){
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, 
    builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    isScrollControlled: true,
    );
  }
  void _addExpense(Expense expense ){
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'apple', amount: 12.45, date: DateTime.now(), category: Category.food
      ),
        Expense(
      title: 'ticket', amount: 19.41, date: DateTime.now(), category: Category.leisure
      ),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Expense Tracker'),
        actions: [
          IconButton(
          onPressed: _openAddExpenseOverlay, 
          icon: const Icon(Icons.add))
        ],
      ),
      body:Column(
        children: [
          Text("chart"),
          Expanded(child: ExpensesList(expenses:  _registeredExpenses))
          ],
      )
    );
  }
}