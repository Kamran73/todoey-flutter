import 'package:flutter/material.dart';
import 'package:todoey_flutter/modals/task.dart';
class TaskNotifier extends ChangeNotifier{
  List<Task> _tasks = [
    Task(title: 'Bring Eggs', isDone: false),
    Task(title: 'Breakfast', isDone: false),
    Task(title: 'Check Grocery', isDone: true),
  ];
  String getTaskTitle(index){
    return _tasks[index].title;
  }
  bool getTaskToggle(index){
    return _tasks[index].isDone;
  }
  void addTask(String value){

    Task newTask = Task(title: value);
    _tasks.add(newTask);
    notifyListeners();
  }
  int getLength(){
    return _tasks.length;
  }
  void updateTask(int index){
    print(_tasks[index]);
    _tasks[index].checkDone();
    notifyListeners();
  }
  void removeTask(int index){
    _tasks.remove(_tasks[index]);
    notifyListeners();
  }
}