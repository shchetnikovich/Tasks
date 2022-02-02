import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:tasks/model/custom_task.dart';
import 'package:tasks/model/custom_task_list.dart';

class CustomTaskTile extends StatelessWidget {
  const CustomTaskTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CustomTaskModel>(builder: (context, value, child) {
      return CheckboxListTile(
        title: Text(
          value.text,
          style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondaryVariant),
        ),
        value: value.completed,
        onChanged: (newValue) {
          value.toggle();
          Provider.of<CustomTaskListModel>(context, listen: false)
              .saveTasks();
        },
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Theme.of(context).colorScheme.secondaryVariant,
        checkColor: Theme.of(context).colorScheme.background,
      );
    });
  }
}