import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/modals/taskNotifier.dart';
import 'customTodo.dart';

class ListViewTask extends StatefulWidget {
  @override
  _ListViewTaskState createState() => _ListViewTaskState();
}

class _ListViewTaskState extends State<ListViewTask> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskNotifier>(
      builder: (context, tasks, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return CustomTodo(
              title: tasks.getTaskTitle(index),
              isChecked: tasks.getTaskToggle(index),
              onChanged: (value) => tasks.updateTask(index),
              longPress: () => tasks.removeTask(index),
            );
          },
          itemCount: tasks.getLength(),
        );
      },
    );
  }
}
