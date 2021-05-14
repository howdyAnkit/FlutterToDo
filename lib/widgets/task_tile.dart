import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function
      checkboxCallBack; //We are getting the value true or false over here only

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallBack}); //We have lifted State to get the elements

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.red,
          value: isChecked,
          onChanged: checkboxCallBack),
    );
  }
}

// TaskCheckBox(
//           checkBoxState: isChecked, toogleCheckBoxStae: checkBoxCallBack),

// void checkBoxCallBack(bool checkBoxState) {
//   setState(() {
//     isChecked = checkBoxState;
//   });
// }
