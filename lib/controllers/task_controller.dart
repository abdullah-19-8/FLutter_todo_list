import 'package:flutter/material.dart';
import 'package:short_point/models/task_model.dart';

class TaskController with ChangeNotifier {
  List<TaskModel> tasks = [
    TaskModel(
      title: 'Training at the Gym',
      isDone: true,
    ),
    TaskModel(
      title: 'Play Paddle with friends',
    ),
    TaskModel(
      title: 'Burger BBQ with family',
    ),
  ];

  List<TaskModel> getTasks() => tasks;

  void addTask(String title) {
    tasks.add(
      TaskModel(
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
}
