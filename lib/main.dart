// @dart=2.9
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/task_data.dart';
import 'tasks_Screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>TaskData() ,
      child: MaterialApp(
        home: TasksScreens(),
      ),
    );
  }
}
