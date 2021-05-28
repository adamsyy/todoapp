import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'task.dart';
import 'package:provider/provider.dart';
import 'task_data.dart';

class TasksList extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
       return TaskTile(tasktitle: Provider.of<TaskData>(context).tasks[index].name,isChecked: Provider.of<TaskData>(context).tasks[index].isDone,checkboxcallback:
           (bool? checkboxstate){
         // setState(() {
         //   Provider.of<TaskData>(context).tasks[index].toggledone();
         // });
       });
    }, itemCount:Provider.of<TaskData>(context).tasks.length,
    );
  }
}
