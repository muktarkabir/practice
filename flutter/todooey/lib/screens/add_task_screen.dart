import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toastification/toastification.dart';
import 'package:todooey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({
    super.key,
  });

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const SizedBox(height: 10),
        const Text(
          'Add Task',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
              fontWeight: FontWeight.w500),
        ),
        TextField(
            controller: controller,
            textAlign: TextAlign.center,
            cursorColor: Colors.lightBlueAccent,
            decoration: theDecoration),
        const SizedBox(height: 10),
        TextButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(controller.text);
                Navigator.pop(context);
                toastification.show(
                  title: const Text('Task added successfully'),
                  autoCloseDuration: const Duration(seconds: 5),
                  type: ToastificationType.success,
                  style: ToastificationStyle.fillColored,
                  alignment: Alignment.topLeft,
                );
              }
            },
            style: ButtonStyle(
                backgroundColor:
                    const WidgetStatePropertyAll(Colors.lightBlueAccent),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)))),
            child: const Text('Add',
                style: TextStyle(color: Colors.white, fontSize: 20))),
      ]),
    );
  }
}

const theDecoration = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.lightBlueAccent),
    ));
