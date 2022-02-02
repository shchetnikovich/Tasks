import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tasks/model/custom_screen.dart';
import 'package:tasks/model/custom_task.dart';
import 'package:tasks/model/custom_task_list.dart';
import 'package:tasks/widgets/custom_task_tile.dart';
import 'package:tasks/widgets/custom_text_field.dart';


class CustomTaskList extends StatelessWidget {
  const CustomTaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _paddingSize = MediaQuery.of(context).size.width * 0.06;
    final CustomTaskListModel taskList = CustomTaskListModel();
    taskList.getTasks();
    CustomScreenModel _stateScreen = Provider.of<CustomScreenModel>(context);
    return ChangeNotifierProvider.value(
      value: taskList,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _paddingSize * 2),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          _stateScreen.showValue ? CustomTextField() : Container(),
          Expanded(child:
              Consumer<CustomTaskListModel>(builder: (context, value, child) {
            return Padding(
              padding: EdgeInsets.fromLTRB(
                _paddingSize,
                _paddingSize / 2,
                _paddingSize,
                _paddingSize,
              ),
              child: ListView(
                children: value.tasks.map((CustomTaskModel value) {
                  return ChangeNotifierProvider.value(
                      value: value, child: const CustomTaskTile());
                }).toList(),
              ),
            );
          })),
        ],
      ),
    );
  }
}