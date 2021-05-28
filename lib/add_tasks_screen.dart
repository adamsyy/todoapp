import 'package:flutter/material.dart';
import 'task.dart';


class Addtasksscreen extends StatelessWidget {
 String newTaskTitle='';
  final Function addTaskcallback;
  Addtasksscreen(this.addTaskcallback);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Tasks',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText){
                     newTaskTitle=newText;
                },

              ),
              FlatButton(
                onPressed: () {

                  addTaskcallback(newTaskTitle);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
