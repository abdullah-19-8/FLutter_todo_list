class TaskModel {
  int id;
  String title;
  bool isDone;

  TaskModel({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  void toggleDone() {
    isDone = !isDone;
  }
}
