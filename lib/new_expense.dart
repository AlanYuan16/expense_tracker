import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget{
  const NewExpense({super.key});

  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense>{
  final _titleController = TextEditingController();
  @override
  void dispose(){
    _titleController.dispose();
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
          onChanged: (String inputValue){

          },
          maxLength: 50,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(label: Text('Title')),
        ),
        Row(children: [
            ElevatedButton(onPressed: (){print(_titleController.text);} ,child: Text("Save Expense"),)
        ]
          
        )
      ],
    )
    );
  }
}