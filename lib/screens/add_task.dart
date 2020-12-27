import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskTitle = "";
    final messageTextController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            controller: messageTextController,
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              taskTitle = value;
            },
          ),
          FlatButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(taskTitle);

              Navigator.pop(context);
            },
            color: Colors.lightBlueAccent,
            child: Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
    );
  }
}
