import 'package:flutter/material.dart';
import 'package:todoey_flutter/Screens/taskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/modals/taskNotifier.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskNotifier(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
