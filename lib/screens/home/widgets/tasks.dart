import 'package:acheev/models/task.dart';
import 'package:flutter/material.dart';
import 'package:acheev/models/task.dart';
import 'package:dotted_border/dotted_border.dart';

class Tasks extends StatelessWidget {
  final tasksList = Task.generateTasks();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
          itemCount: tasksList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => tasksList[index].isLast
              ? _buildAddtask()
              : _buildTask(context, tasksList[index])),
    );
  }

  Widget _buildAddtask() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(20),
      dashPattern: [10, 10],
      color: Colors.grey,
      strokeWidth: 2,
      child: Center(
        child: Text(
          '+ add',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildTask(BuildContext context, Task task) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: task.bgColor, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            task.iconData,
            color: task.iconColor,
            size: 35,
          ),
          SizedBox(height: 30),
          Text(
            task.title!,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              _buildTaskStatus(
                  task.btnColor!, task.iconColor!, '${task.notes} notes'),
              SizedBox(width: 5),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildTaskStatus(Color bgColor, Color txColor, String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(20)),
      child: Text(
        text,
        style: TextStyle(color: txColor),
      ),
    );
  }
}
