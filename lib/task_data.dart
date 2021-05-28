import 'package:flutter/material.dart';
import 'task.dart';


class TaskData extends ChangeNotifier{


  List <Task> tasks=[
    Task(name: 'buy milk '),
    Task(name: 'buy egg '),
    Task(name: 'sell milk '),

  ];
}