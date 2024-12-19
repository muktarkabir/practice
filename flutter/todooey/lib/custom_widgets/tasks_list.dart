import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toastification/toastification.dart';
import 'package:todooey/custom_widgets/task_tile.dart';
import 'package:todooey/models/task_data.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool? newValue) {
                taskData.toggleCheckbox(task);
              },
              deleteTaskCallback: () {
                taskData.deleteTask(task);
                toastification.show(
                    title: const Text('Deleted task successfully'),
                    style: ToastificationStyle.flatColored,
                    autoCloseDuration: const Duration(seconds: 2));
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
