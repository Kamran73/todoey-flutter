import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTodo extends StatelessWidget {
  CustomTodo({
    required this.title,
    required this.isChecked,
    required this.onChanged,
    required this.longPress,
  });

  final String title;
  final bool isChecked;
  final dynamic onChanged;
  final dynamic longPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        title,
        style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: onChanged,
      ),
      onLongPress: longPress,
    );
  }
}
