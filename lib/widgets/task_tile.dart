import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool checkBoxState;
  final String taskTitle;
  final Function onChangeCheckBox;
  final Function onLongPressCheckBox;
  TaskTile(
      {this.checkBoxState,
      this.taskTitle,
      this.onChangeCheckBox,
      this.onLongPressCheckBox});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCheckBox,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: checkBoxState ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: checkBoxState,
        onChanged: onChangeCheckBox,
      ),
    );
  }
}
