import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:short_point/controllers/task_controller.dart';
import 'package:short_point/models/task_model.dart';
import 'package:short_point/utils/constant.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key, this.task, this.index});

  final TaskModel? task;
  final int? index;

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  final TextEditingController _taskController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _taskController.text = widget.task?.title ?? '';
    _taskController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskController>(builder: (context, provider, _) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            widget.task != null ? 'Edit Task' : 'Add New Task',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset('assets/icons/arrowBack.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                )),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Task Name',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.84,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _taskController,
                decoration: InputDecoration(
                  focusColor: primaryColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  minimumSize: Size(
                    double.infinity,
                    61 / screenHeight * MediaQuery.of(context).size.height,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  if (_taskController.text.isEmpty) {
                    Fluttertoast.showToast(
                      msg: 'Task name is empty',
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.white,
                      textColor: Colors.red,
                    );
                    return;
                  }
                  if (widget.task == null) {
                    provider.addTask(_taskController.text);
                    Navigator.pop(context);
                    return;
                  }
                  if (widget.task!.title == _taskController.text) {
                    Fluttertoast.showToast(
                      msg: 'Task name is same',
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.white,
                      textColor: Colors.red,
                    );
                    return;
                  } else {
                    provider.editTask(
                      widget.index!,
                      _taskController.text,
                    );
                    Navigator.pop(context);
                  }
                },
                child: const Text(
                  'Done',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      );
    });
  }
}
