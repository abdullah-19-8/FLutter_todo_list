import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:short_point/controllers/task_controller.dart';
import 'package:short_point/utils/constant.dart';
import 'package:short_point/views/home/widgets/task_card.dart';

class TaskSection extends StatelessWidget {
  const TaskSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
        ),
        child: Consumer<TaskController>(builder: (context, provider, _) {
          return ListView.builder(
            itemCount: provider.tasks.length,
            itemBuilder: (context, index) => TaskCard(
              size: size,
              index: index,
              provider: provider,
            ),
          );
        }),
      ),
    );
  }
}
