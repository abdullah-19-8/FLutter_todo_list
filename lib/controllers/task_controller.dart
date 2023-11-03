import 'package:flutter/material.dart';
import 'package:short_point/models/task_model.dart';

class TaskController with ChangeNotifier {
  List<TaskModel> tasks = [
    TaskModel(
      id: 1,
      title: 'Training at the Gym',
      isDone: true,
    ),
    TaskModel(
      id: 2,
      title: 'Play Paddle with friends',
    ),
    TaskModel(
      id: 3,
      title: 'Burger BBQ with family',
    ),
  ];

  List<TaskModel> getTasks() => tasks;

  void addTask(String title) {
    tasks.add(
      TaskModel(
        id: tasks.length + 1,
        title: title,
      ),
    );
    notifyListeners();
  }

  void toggleDone(int index) {
    tasks[index].toggleDone();
    notifyListeners();
  }

  void editTask(int index, String title) {
    tasks[index].title = title;
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
