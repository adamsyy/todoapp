import 'package:flutter/material.dart';
import 'package:todo/task_data.dart';
import 'tasks_list.dart';
import 'add_tasks_screen.dart';
import 'task.dart';
import 'package:provider/provider.dart';

class TasksScreens extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 35,
                    color: Colors.lightBlueAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 50),
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} tasks',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: TasksList(),

            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          showModalBottomSheet(context: context, builder: (context)=>Addtasksscreen((newTaskTitle){
              // setState(() {
              //   Provider.of<TaskData>(context).tasks.add(Task(name: newTaskTitle));
              // });
              Navigator.pop(context);
          }));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
    );
  }
}

// Expanded(
// child: Container(
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(20),
// topRight: Radius.circular(20))),
// ),
// ),
