import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool isTaskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext)? deleteFunction;

  const ToDoTile({
    super.key,
    required this.taskName,
    required this.isTaskCompleted,
    required this.onChanged,
    required this.deleteFunction
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24,24,24,0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(12)
            )
          ]
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(24,24,24,24),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Row(
            children: [
              Checkbox(value: isTaskCompleted, onChanged: onChanged, activeColor: Colors.black,),
              Text(
                taskName,
                style: TextStyle(
                  decoration: isTaskCompleted? TextDecoration.lineThrough: TextDecoration.none
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}