
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class TodoApp extends StatefulWidget {
  final String taskName;
  final bool tCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  TodoApp({
    Key? key,
    required this.taskName,
    required this.tCompleted,
    required this.onChanged,
    required this.deleteFunction,
  }) : super(key: key);

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(12),
              onPressed: widget.deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.yellow[500],
          ),
          height: 100,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(34, 0, 34, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.taskName,
                  style: TextStyle(
                    fontSize: 18,
                    decoration: widget.tCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
                Checkbox(
                  value: widget.tCompleted,
                  onChanged: widget.onChanged,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
