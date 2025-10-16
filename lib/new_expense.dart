import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget{
  const NewExpense({super.key});

  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense>{
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose(){
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  var _enteredTitle = '';
  void _saveTitleInput(String inputValue){
    _enteredTitle = inputValue;
    print(_enteredTitle);
  }
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(16),
    child: Column(
      children: [
        TextField(
          controller: _titleController,
          maxLength: 50,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(label: Text('Title')),
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(prefixText:'\$',
                label:  Text('Number')),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Text("Selected Date"),
            IconButton(onPressed: (){}, icon: const Icon(Icons.calendar_month))],))
          ],
        ),
        Row(children: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Cancel")),

            ElevatedButton(onPressed: (){print(_titleController.text);
            print(_amountController.text);} ,child: Text("Save Expense"),)
        ]
          
        )
      ],
    )
    );
  }
}