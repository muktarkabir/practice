import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooey/custom_widgets/tasks_list.dart';
import 'package:todooey/models/task_data.dart';
import 'package:todooey/screens/add_task_screen.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  bool isOnWeb() => kIsWeb;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          elevation: 0,
          shape: const CircleBorder(),
          backgroundColor: Colors.lightBlueAccent,
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            showModalBottomSheet(
                constraints: isOnWeb() == true
                    ? null
                    : BoxConstraints(
                        minHeight: 300,
                        maxHeight: MediaQuery.of(context).size.height * 0.6),
                isScrollControlled: isOnWeb() ? false : true,
                context: context,
                builder: (context) => AddTaskScreen());
          }),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(Icons.list,
                      size: 30.0, color: Colors.lightBlueAccent),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Todooey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: const TextStyle(color: Colors.white, fontSize: 18.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      topRight: Radius.circular(26))),
              child: const TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
