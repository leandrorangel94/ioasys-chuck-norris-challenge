import 'package:flutter/material.dart';

import 'task_item_widget.dart';

class ListTaskWidget extends StatelessWidget {
  final List listToDo;
  final Function(bool?, int) onChanged;
  final Function(int) onRemoved;
  const ListTaskWidget(
      {Key? key,
      required this.listToDo,
      required this.onChanged,
      required this.onRemoved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listToDo.length,
        itemBuilder: (_, index) {
          var task = listToDo[index];
          return TaskItemWidget(
            title: task.descricao,
            completed: task.completed,
            onChanged: (v) => onChanged(v, index),
            onDismissed: (direction) => onRemoved(index),
          );
        });
  }
}
