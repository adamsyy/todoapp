import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

  final bool? isChecked;
   final String tasktitle;

   final Function(bool?) checkboxcallback;

  // (bool? checkboxstate){
  // setState(() {
  // isChecked=checkboxstate;
  // });
  // }
TaskTile({this.isChecked,required this.tasktitle,required this.checkboxcallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(tasktitle,style: TextStyle(decoration:isChecked!?TextDecoration.lineThrough:null),),

      trailing:Checkbox(
        value: isChecked,
       onChanged: checkboxcallback,

      ),
      // trailing: Checkbox(value: false),
    );
  }
}

//
// (bool? checkboxstate){
// setState(() {
// isChecked=checkboxstate;
// });
// },