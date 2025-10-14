import 'package:expense_tracker/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget{
  const Expenses({super.key});

  State<Expenses> createState(){
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {

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
          onPressed: (){}, 
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