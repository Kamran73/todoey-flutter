import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MBottomSheet extends StatelessWidget {
  MBottomSheet({required this.taskTitleFunction});
  late String taskTitle;
  dynamic taskTitleFunction;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 40, left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Title',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25,
                    wordSpacing: 2.0,
                    fontWeight: FontWeight.w600),
              ),
              TextField(
                cursorHeight: 28.0,
                autofocus: true,
                onChanged: (value) {
                  taskTitle = value;
                },
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  taskTitleFunction(taskTitle);
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
