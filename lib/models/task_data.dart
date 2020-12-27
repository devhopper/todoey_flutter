import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  int get getTaskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
